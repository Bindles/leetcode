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

// Constructor function to create a new spell and add it to allSpells
func NewSpell(name, typ string, dmg int) *Spell {
    spell := &Spell{name: name, typ: typ, dmg: dmg}
    allSpells = append(allSpells, *spell)
    return spell
}

// Define a method called create for the Spell struct
func (s Spell) create() {
    fmt.Printf("Spell created: %s, Type: %s, Damage: %d\n", s.name, s.typ, s.dmg)
}

func main() {
    // Creating spells
    fireball := NewSpell("Fireball", "Fire", 20)
    thunderbolt := NewSpell("Thunderbolt", "Electric", 30)

    // Accessing all spells
    fmt.Println("All Spells:")
    for _, spell := range allSpells {
        fmt.Printf("Name: %s, Type: %s, Damage: %d\n", spell.name, spell.typ, spell.dmg)
    }

    // Creating another spell
    fireballtwo := NewSpell("Fireballtwo", "Fire", 20)

    // Accessing all spells again
    fmt.Println("All Spells after adding Fireballtwo:")
    for _, spell := range allSpells {
        fmt.Printf("Name: %s, Type: %s, Damage: %d\n", spell.name, spell.typ, spell.dmg)
    }
}
