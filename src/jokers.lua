--Windows NT 5.0
SMODS.Joker{
    key = "nt5",
    config = {
        extra = {
            xmult0 = 5
        }
    },
    loc_txt = {
        ['name'] = 'Windows NT 5.0',
        ['text'] = {
            [1] = 'First played {C:attention}5{} card gives',
            [2] = '{X:red,C:white}X5{} Mult when scored'
        },
    },
    pos = {
        x = 0,
        y = 0
    },
    display_size = {
        w = 71 * 1, 
        h = 95 * 1
    },
    cost = 5,
    rarity = 2,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    unlocked = true,
    discovered = true,
    atlas = 'CustomJokers',
    
    calculate = function(self, card, context)
        if context.individual and context.cardarea == G.play  then
            if (function()
                for i = 1, #context.scoring_hand do
                    local scoring_card = context.scoring_hand[i]
                    if scoring_card:get_id() == 5 then
                        return scoring_card == context.other_card
                    end
                end
                return false
            end)() then
                G.E_MANAGER:add_event(Event({
                    func = function()
                        play_sound('nt_nt5')
                        return true
                    end,
                }))
                return {
                    Xmult = 5
                }
            end
        end
    end
}