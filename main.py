# coding=utf-8
from __future__ import print_function, unicode_literals

import kivy
kivy.require("1.10.0")

from kivy.app import App
from kivy.uix.boxlayout import BoxLayout
from kivy.uix.tabbedpanel import TabbedPanel, TabbedPanelItem
from kivy.uix.textinput import TextInput
from kivy.uix.button import Button
from kivy.uix.label import Label
from kivy.uix.recycleview import RecycleView
from kivy.uix.popup import Popup
from hymn_rst import RstDocument
from kivy.lang import Builder

from data import HymnData

about_rst = """
About the Old-Line Primitive Baptist Hymn and Tune Book
======================================================================

This book of hymns was compiled in hopes that it would be useful to
Primitive Baptists of the old line and those who believe and practice
like us.  Every effort has been made to ensure that the texts it
contains are sound in doctrine and expressive of true Christian
experience.  Insofar as that is not the case, the fault is my own.

I have had the assistance of many able brothers and sisters, and have
consulted the hymnals of Bro. D.H. Goble, Elders Benjamin Lloyd,
Gilbert Beebe, Wilson Thompson, Walter Cash, John Daily, and others.

This electronic edition contains all the texts of the print version,
and can be used in private.  I do not recommend singing from a
distracting electronic device in public worship.

If you note any errors, feel free to contact me (the compiler of the
hymn book and the creator of this app) at
`jasonfruit@gmail.com <mailto:jasonfruit@gmail.com>`_."""

search_instructions = """
**Search hints:**

- To search for single words anywhere in a hymn, enter them separated
  by spaces
- To search for a phrase, enclose it in double quotes, e.g.
  "amazing grace".
- Capitalization is ignored.
"""


# why is some stuff done with Builder strings and some generated in
# code?  Because I can't figure out how to do all of it in code.  Boo,
# Kivy docs, boo.

Builder.load_string("""

<WrappedLabel>:
    text: ''
    text_size: self.size
    halign: 'center'
    valign: 'middle'
    markup: True

<LeftAlignedLabel>:
    text: ''
    text_size: self.size

<HymnButton>:
    text: ''
    text_size: self.size

<FirstLineList>:
    viewclass: 'HymnButton'
    RecycleBoxLayout:
        default_size: None, dp(56)
        default_size_hint: 1, None
        size_hint_y: None
        height: self.minimum_height
        orientation: 'vertical'

<SearchResultList>:
    viewclass: 'HymnButton'
    RecycleBoxLayout:
        default_size: None, dp(56)
        default_size_hint: 1, None
        size_hint_y: None
        height: self.minimum_height
        orientation: 'vertical'
""")

def show_hymn_popup(num):
    try:
        data = HymnData()
        hymn = data.get_hymn(num)
        hymn_rst = RstDocument(text=hymn.to_rst())
        hymn_rst.bind(on_ref_press = lambda *args, **kwargs: print(args, kwargs))
        popup = Popup(title="%s (%s) — %s" % (hymn.num, hymn.meter, hymn.author),
                      content=hymn_rst)
        popup.open()
    except: #PokemonError gottaCatchEmAll:
        pass
        
class HymnButton(Button):
    def __init__(self, **kwargs):
        super(HymnButton, self).__init__(**kwargs)
        self.bind(on_press=self.on_click)
    def on_click(self, instance):

        try:
            num = int(self.text.split(":")[0])
        except ValueError:
            return
        
        show_hymn_popup(num)


class FirstLineList(RecycleView):
    def __init__(self, **kwargs):
        super(FirstLineList, self).__init__(**kwargs)
        self.data = [{"text": "   " + str(row[0]) + ": " + row[1]}
                     for row in
                     HymnData().get_first_lines()]

class SearchResultList(RecycleView):
    def __init__(self, terms, **kwargs):
        super(SearchResultList, self).__init__(**kwargs)
        self.data = [{"text": str(row[0]) + ": " + row[1]}
                     for row in
                     HymnData().get_search_results(terms)]

class LeftAlignedLabel(Label):
    pass

class WrappedLabel(Label):
    pass
        
class OLPBHTBApp(App):
    def __init__(self):
        App.__init__(self)
        self.data = HymnData()
        
        self.title = "Old-Line Primitive Baptist Hymn and Tune Book"
        
        self.panel = TabbedPanel()
        
        self.number_tab = TabbedPanelItem(text="By number")
        self.panel.add_widget(self.number_tab)

        self.set_up_number_tab()

        self.panel.default_tab = self.number_tab

        self.first_line_tab = TabbedPanelItem(text="By first line")
        self.panel.add_widget(self.first_line_tab)

        self.set_up_first_line_tab()

        self.search_tab = TabbedPanelItem(text="Search")
        self.panel.add_widget(self.search_tab)
        self.set_up_search_tab()

        self.about_tab = TabbedPanelItem(text="About")
        self.panel.add_widget(self.about_tab)
        self.set_up_about_tab()

    def show_hymn_num(self, btn):
        try:
            num = int(self.hymn_num_input.text)
        except ValueError:
            return
        show_hymn_popup(num)

    def show_search_results(self, btn):
        popup = Popup(title="Results for '%s'" % self.term_input.text,
                      content=SearchResultList(self.term_input.text))
        popup.open()

    def set_up_number_tab(self):
        layout = BoxLayout(orientation="vertical")
        self.number_tab.content = layout

        hlayout = BoxLayout(orientation="horizontal",
                            size_hint=(1.0, 0.1))

        hlayout.add_widget(Label(text="Hymn #:",
                                 size_hint=(0.3, 1.0)))

        self.hymn_num_input = TextInput(size_hint=(0.7, 1.0))
        hlayout.add_widget(self.hymn_num_input)

        layout.add_widget(hlayout)

        self.hymn_num_go = Button(text="Go",
                                  on_press=self.show_hymn_num,
                                  size_hint=(1.0, 0.1))

        layout.add_widget(self.hymn_num_go)

        layout.add_widget(Label(size_hint=(1.0, 0.8)))


    def set_up_first_line_tab(self):
        self.first_line_tab.content = FirstLineList()

    def set_up_search_tab(self):
        layout = BoxLayout(orientation="vertical")

        layout.add_widget(LeftAlignedLabel(text="Search:",
                                           halign="left",
                                           size_hint=(1.0, 0.1)))

        self.term_input = TextInput(size_hint=(1.0, 0.1))
        layout.add_widget(self.term_input)

        self.search_go = Button(text="Go",
                                on_press=self.show_search_results,
                                size_hint=(1.0, 0.1))
        layout.add_widget(self.search_go)

        layout.add_widget(RstDocument(size_hint=(1.0, 0.7),
                                      text=search_instructions))

        self.search_tab.content = layout

    def set_up_about_tab(self):
        self.about_tab.content = RstDocument(text=about_rst)

    def build(self):
        return self.panel

if __name__ == "__main__":
    OLPBHTBApp().run()
