package com.myhotel.myhotel.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;

import com.myhotel.myhotel.models.Card;
import com.myhotel.myhotel.servicies.CardService;
@RestController
@RequestMapping(path = "/card")
@CrossOrigin(origins = "*", methods = {RequestMethod.GET, RequestMethod.POST, RequestMethod.DELETE, RequestMethod.PUT})
public class CardController {
    @Autowired
    private CardService cardService;
    @GetMapping
    public ArrayList<Card> findAll() {
        return cardService.findAll();
    }

    @GetMapping("/{id}")
    public Card findById(@PathVariable Integer id) {
        return cardService.findById(id);
    }

    @PostMapping
    public Card save(@RequestBody Card card) {
        return cardService.save(card);
    }

    @DeleteMapping("/{id}")
    public void delete(@PathVariable Integer id) {
        cardService.deleteById(id);
    }

    @PutMapping
    public Card modify(@RequestBody Card card) {
        return cardService.save(card);
    }
}
