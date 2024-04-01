package main

import "fmt"

// Define a struct named Spell
type Spell struct {
    name string
    typ  string
    dmg  int
}

// Define a slice to store all created spells
var allSpells []Spell

// Method to add a new spell to the allSpells slice
func addSpell(spell Spell) {
    allSpells = append(allSpells, spell)
}

// Define a method called create for the Spell struct
func (s Spell) create() {
    fmt.Printf("Spell created: %s, Type: %s, Damage: %d\n", s.name, s.typ, s.dmg)
    addSpell(s) // Automatically add the new spell to the allSpells slice
}

func main() {
    // Creating spells
    fireball := Spell{name: "Fireball", typ: "Fire", dmg: 20}
    thunderbolt := Spell{name: "Thunderbolt", typ: "Electric", dmg: 30}

    // Call the create method for each spell
    fireball.create()
    thunderbolt.create()

    // Accessing all spells
    fmt.Println("All Spells:")
    for _, spell := range allSpells {
        fmt.Printf("Name: %s, Type: %s, Damage: %d\n", spell.name, spell.typ, spell.dmg)
    }
}
