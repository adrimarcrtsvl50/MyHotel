package com.myhotel.myhotel.servicies;

import java.util.ArrayList;

import com.myhotel.myhotel.models.Card;
import com.myhotel.myhotel.repositories.CardRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CardService {
    @Autowired
    private CardRepository cardRepository;

    public ArrayList<Card> findAll() {
        return (ArrayList<Card>) cardRepository.findAll();
    }

    public Card findById(Integer id){ return cardRepository.findById(id).get();};

    public Card save(Card card) {
        return cardRepository.save(card);
    }

    public void deleteById(Integer id) {
        cardRepository.deleteById(id);
    }
}
