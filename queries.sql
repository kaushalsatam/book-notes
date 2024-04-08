DROP TABLE IF EXISTS books, notes;

CREATE TABLE books(
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) UNIQUE NOT NULL,
    author VARCHAR(25) NOT NULL,
    isbn BIGINT UNIQUE NOT NULL,
    date_read DATE NOT NULL,
    rating INTEGER CHECK (rating >= 1 AND rating <= 10) NOT NULL,
    amzn_link VARCHAR(75) UNIQUE NOT NULL
);

CREATE TABLE notes(
    id SERIAL PRIMARY KEY,
    book_summary TEXT NOT NULL,
    book_notes TEXT NOT NULL,
    book_id INTEGER REFERENCES books(id) NOT NULL
);

INSERT INTO books (name, author, isbn, date_read, rating, amzn_link)
VALUES ('You can negotiate anything', 'Herb Cohen', 9780553281095, '2023-08-02', 10, 'https://a.co/d/3R7TCW2');

INSERT INTO books (name, author, isbn, date_read, rating, amzn_link)
VALUES ('The Psychology of Money', 'Morgan Housel', 9789390166268, '2021-09-03', 8, 'https://amzn.in/d/e6LzSfo');

INSERT INTO notes (book_summary, book_notes, book_id)
VALUES ('Everything is negotiable. Challenge authority. You have the power in any situation. This is how to realize it and use it. A must-read classic from 1980 from a master negotiator. My notes here aren’t enough because the little book is filled with so many memorable stories — examples of great day-to-day moments of negotiation that will stick in your head for when you need them. (I especially loved the one about the power of the prisoner in solitary confinement.) So go buy and read the book. I’m giving it a 10/10 rating even though the second half of the book loses steam, because the first half is so crucial.', 
        'Power is the capacity or ability to get things done.
        It determines whether you can or can’t influence your environment.
        It gives you a sense of mastery over your life.

        All power is based on perception.
        If you think you’ve got it, then you’ve got it.
        You have more power if you believe you have power and view your life’s encounters as negotiations.

        Most people firmly believe that they can’t negotiate.
        This is a prime example of creating a self-fulfilling prophecy.

        Force yourself to go outside your own experience by vigorously testing your assumptions.
        You’ll discover, to your astonishment, that many of them are false.

        Always have a sense of mastery over your situation.
        Pick and choose your opportunities based upon your needs.
        Don’t allow yourself to be manipulated or intimidated by those who aren’t concerned with your best interests.

        You have the freedom to choose your attitude toward any given set of circumstances and the ability to affect the outcome.
        You can play a much greater role than you thought in shaping your life and improving your lifestyle.

        Unreality is the true source of powerlessness.
        What we do not understand, we cannot control.

        If life is a game, negotiation is a way of life.

        You must be reality oriented - seeing things as they really are without passing judgment.
        “See it like it is!”
        Take into account hard-nosed realities affecting everyone.

        In politics, poker, and negotiation, success derives not only from holding a strong hand, but from analyzing the total situation so cards can be skillfully played.
        To influence an outcome, you must realistically analyze the other side’s position, as well as your own, in light of POWER, TIME, INFORMATION.

        Whether you think you can or think you can’t, you’re right.

        Power isn’t good or bad.
        It isn’t moral or immoral.
        It isn’t ethical or unethical.
        It’s neutral.
        Power is a way of getting from one place to another.
        You’re at position A (your present situation or predicament).
        You want to go to position B (your objective, goal, or destination).
        Power enables you to go from A to B.
        It enables you to change your reality to achieve that goal.

        When you complain about power, it’s because it’s being used in a manipulative, coercive, or domineering way; power over rather than power to. That’s power being abused, and the criticism is valid.
        Or you don’t approve of power’s goal, if the desired end or destination is considered corrupt and exploitative, even the most appropriate means won’t make that end acceptable.
        Other than in these two instances, I see no objection to the use of power.
        Split power from its many possible goals.
        The goals may be “good” or “bad,” but the power to implement the goals is a neutral force.
        Electricity isn’t bad just because it can shock.
        Wind isn’t bad because it occasionally makes tornadoes.
        We need power to protect ourselves and to ensure that we have a sense of mastery over our lives.
        You have plenty of power.
        Use it to sensibly implement objectives that are important to you.

        You owe it to yourself not to live by what someone else thinks you ought to do.

        If you turn away because you believe you are helpless (“What can one person do?”), you’ll no doubt feel frustrated and wretched.
        When people in our society believe they can’t, as individuals, make a difference, it’s bad for all of us.
        “Powerless” people become apathetic and toss in the towel, which means others have to carry them on their backs, or they become hostile and try to tear down a system they can’t understand and don’t believe they can control.

        Lynette Fromme attempted to gun down President Gerald Ford.
        After her arrest, she explained, “When people around you treat you like a child and pay no attention to the things you say, you have to do something!”
        The “something” Squeaky did was psychopathic and self-destructive.
        She didn’t realize that she had other alternatives that were socially acceptable and legal.
        A criminal act, regardless of its goal, is almost always an abuse of power.

        Power is neutral.
        It’s a means, not an end.
        It’s indispensable for mental health and nonaggressive survival.

        You have power if you perceive that you have it.
        Even a prisoner in solitary confinement, desperate for a cigarette. (story)

        Within reason, you can get whatever you want if you’re aware of your options, if you test your assumptions, if you take shrewdly calculated risks based on solid information, and if you believe you have power.

        Believe firmly that you have power, and you’ll convey that self-confident perception to others.
        You determine how they see, believe, and react to you.
        Power is their perception that you can, and just might, bring about intended effects that they believe might help them or hurt them.
        The Wizard of Oz: Who does the Wizard turn out to be? Just a bumbling old man with a smoke machine and a noisemaker.
        In reality he had no power, but he exercised a great deal of power because everyone was convinced he had it.

        The power of competition:
        Whenever you create competition for something you possess, what you have moves up in value.
        “I have a marvelous idea.”
        “Have you discussed it with anyone else?”
        “Yes, but they don’t think it’s worth very much.”
        Your idea is devalued because there’s no competition for it.
        But if in response to my question you reply,
        “Yes … I talked it over with others at your level, and they said they’d like to hear more, because it sounds terrific!”
        Through creating competition, you’ve made your idea valuable and desirable.
        That’s why it’s easier to get a job when you already have one.

        Scenario: You need a loan.
        Is it good to approach the bank on bended knee and say, “Please help me. I’m destitute. Save my family from the horrors of bankruptcy. I can’t repay.” No.
        Put on a suit. Wear an expensive gold watch. Have three of your friends - your entourage - outfit themselves the same way.
        Walk through the bank, exuding the impression, “Hi there! I’m a top executive striding through the bank. Keep away from me with your lousy money … I don’t need it.”
        By using the “Keep away from me with your lousy money” ploy, Lance was granted 381 loans by 41 banks.
        Why did banks compete with each other to lend huge sums of money to Lance?
        For three reasons:
        Because other banks were lending him money, which for all practical purposes meant his credit was first-rate.
        Because banks thought he didn’t need the money. That was their perception, based on the fact that he acted blasé. He seemingly hadn’t a care in the world.
        Lance’s attitude was that he was doing banks a favor by giving them the opportunity to lend him money.
        Most important, because he obviously had options.
        He could borrow from any bank he wanted to, picking and choosing as he saw fit.
        This put banks in dog-eat-dog competition with each other to push money into his hands.
        When the same banks learned that Lance desperately needed these loans to pay back other loans, his sources dried up.
        He perceived that he had options and capitalized on them.
        He cashed in on the competition he created.
        You should do the same whenever possible.
        Above all, never enter a negotiation without options.

        Anything that’s the product of a negotiation has got to be negotiable, including the price on the sign.
        There was no Big Printer in the Sky.

        The power of legitimacy.
        Printed words, documents, and signs carry authority.
        Most people tend not to question them.
        Legitimacy can be questioned and challenged.
        Use the power of legitimacy when it’s advantageous for you to do so and challenge that power when it’s advantageous for you to do so.
        When someone says “the book says it right here”, I say, “Does that book mention my name? Does it indicate the location and address of my building?”
        If they say, “Of course not!” I say, “Then I don’t think it’s my book.”
        “You can’t argue with the book!” “Why not?” I asked.
        “Because no one ever did it before!”
        Think about the book I successfully challenged.
        It was an IRS document, which was the product of a negotiation, drawn up by bureaucrats to interpret a regulation that was also the product of a negotiation.
        Since the book’s position was the end result of a negotiation, the matter was negotiable.

        Before you can hit the jackpot, you have to put a coin in the machine.
        You must be willing to take risks.

        Always induce the other side to invest in a situation.
        That’s why your initial approach to a negotiation should always be collaborative, as though you’re hungry for help.
        In negotiation, dumb is often better than smart, inarticulate frequently better than articulate, and many times weakness can actually be strength.
        Train yourself to say, “I don’t know.”
        Think of your own experiences when dealing with stupid people.
        Your sophisticated arguments and persuasive devices are worthless when you’re dealing with a moron who can’t even comprehend what you’re talking about.
        Don’t be too quick to “understand”.
        Ask questions, even when you think you might know the answers.

        The company’s presentation lasted two and a half hours.
        The Japanese smiled politely and answered, “We don’t understand. Can you do it again?”

        “We’ve found a house we’re crazy about. I want to buy it. Help negotiate the price?”
        “What would happen if you didn’t get this dream house?”
        He replied, “Are you kidding? I think my wife would kill herself! I think my kids would leave home! I’ll do anything for them! We just have to bring the asking price down.”
        Take a guess. Did Smith pay $130,000 for the dream house or $150,000? You’re right, he paid $150,000. With his attitude he’s lucky he didn’t pay $160,000.
        That house meant so much to him that he was unwilling to risk losing it. Because he cared too much.
        Moral: Care, but never that much.
        When you feel you have to have something, you always pay top dollar, and the other party can manipulate you with ease.

        Have knowledge of the “odds,” plus a philosophical willingness to shrug your shoulders.
        Take moderate or incremental risks: risks you can afford without being uptight about adverse consequences.
        Before chancing anything, calculate the odds to determine whether the potential benefits are worth the possible cost of failure.
        Be rational, not impulsive.
        Never take a risk out of pride, impatience, or a desire to get it over with.

        Wealth enables one to explore favorable opportunities, for the inherent risk is moderate.
        It’s no more than bite-size.
        In case of loss, the wealthy person can shrug.

        Tap in on the power of expertise.
        Most of us rarely question the statements of tax accountants, physicians, auto mechanics, attorneys, computer specialists, stock brokers, research scientists, professors.
        If you want to present yourself as having expertise: Establish your background and credentials early in the confrontation.
        The only kind of expertise required for most negotiations is the ability to ask intelligent questions and know whether you are getting accurate responses.

        In all negotiations, there are two things being bargained for:
        1. The specific issues and demands, which are stated openly.
        2. The real needs of the other side, which are rarely verbalized.

        Buying a car example:
        I gather as much specific data as I can about the car itself.
        Next, I find out as much as possible about the dealership.
        Then, with respect to the dealer himself, I acquaint myself with his likes, dislikes, prejudices, and value system.
        I find out if he’s the type who makes quick decisions or deliberate decisions.
        I probe, observe, ask questions, and listen more than I talk.
        This gives me valuable information that enables me to best structure the negotiation.
        I then adapt my purchasing style to satisfy the real needs of the seller.

        Information:
        What do you know about the salesman’s needs or the store’s needs?
        Is the salesman on salary, commission, or a combination of both?
        What’s the inventory situation on this model?
        Is it the store’s hottest item, currently on backorder, or is it a dog the store manager will dump at any price?
        Is the store making a profit on this model? If so, how much?

        Almost anything you say furthers the informational imbalance and strengthens the salesman’s hand.

        If you have something difficult to negotiate, cope with it at the end of a negotiation, after the other side has made a hefty expenditure of energy and a substantial time investment.
        What if the emotional issue or quantifiable item surfaces at the beginning of the negotiation?
        Acknowledge it, chat about it, but put it off till later - returning to it only after the other side has spent a lot of time with you.
        You’ll be surprised how the other side’s investment will cause them to become flexible at the end of the negotiation.

        Your perception that I can and might help you or hurt you gives me “muscle” in our relationship.
        The “actual, factual” reality of the situation is immaterial.
        If you think I can and might do something to affect you (even though I can’t or won’t), I will exercise power in my dealings with you.
        It’s perception, true or false.
        No one will ever negotiate with you in any significant way unless they’re convinced that you can and might help them - or can and might hurt them.
        In an adversary relationship, if you think I might help you or hurt you, I should never defuse your perception of my power unless I get something in return, such as a concession on your part, or a repositioning on your part, that truly benefits me or our relationship.

        Jimmy Carter: Unfortunately, he immediately spelled out what we would or wouldn’t do.
        In the eyes of some adversaries this promptly transformed us into a paper tiger, no more threatening than your neighbor’s kitten.
        He made the unfortunate mistake of publicly eliminating options without getting something in return.

        Don’t eliminate options and reduce the other side’s stress unless you receive quid pro quo.
        Let them wonder until you have received what you’re shooting for.

        Most people aren’t persistent enough when negotiating.
        They present something to the other side, and if the other side doesn’t “buy” it right away, they shrug and move on to something else.
        Learn to hang in there.
        You must be tenacious.

        Who’s the worst person you can negotiate for? Yourself.
        You do a much better job negotiating for someone else. Why? Because you take yourself too seriously in any interaction that concerns you.
        You care too much about yourself.
        That puts you under pressure and stress.
        When you negotiate for someone else, you’re more relaxed.
        You’re more objective.
        You don’t care as much, because you regard the situation as fun or as a game - which it is.
        Regard all encounters and situations, including your job, as a game, as the world of illusion.
        Pull back a little and enjoy it all.
        Things are seldom what they seem.
        Teach yourself to say, “Big deal,” “Who cares?” and “So what?”
        You’ll get better results, because your attitude will convey your feeling of power and mastery of your life.

        We fail to get adequate information because we regard negotiation as an event obtaining information under pressing deadline.
        These conditions present enormous difficulties.
        The actual starting point of a negotiation always precedes the face-to-face happening by weeks or even months. It’s a process.
        Old horse traders never let the seller know which horse really interests them, because if they did the price might go up.
        Learn what the other side really want, their limits, and their deadline.
        How do you gather this information? You start early, because the earlier you start, the easier it is to obtain information.
        You always get more information preceding an acknowledged, formal confrontation.
        If you wait until the last minute, they say, “Come on … I can’t tell you anything now - it’s negotiation time!”
        Quietly and consistently probe.

        The more confused and defenseless you seem, the more readily they will help you with information and advice.
        Ask questions even when you think you know the answers, because by doing so, you test the credibility of the other side.
        You want to know the real limits on the other side, that is, the extent beyond which they will not go.
        The more information you have about their financial situation, priorities, deadlines, costs, real needs, and organizational pressures, the better you can bargain.
        And the sooner you start to acquire these data, the easier they will be to obtain.
        You have to give information in order to get some in return.

        Tactic that is identified for what it is - a tactic that’s seen through - is ineffective.

        Never negotiate with anyone totally lacking in authority.
        In most instances, an order-enforcing subordinate is simply a mouthpiece, acting in a robotlike manner.
        Sidestep robots.
        Negate any policy that’s detrimental to your interests by taking a step upward.
        The person who gives the policy can also take it away.
        Every organization is a hierarchy.
        Steadily go up the ladder, rung by rung, until you get satisfaction.
        The higher you go, the more likely you are to have your needs met.
        Why? Several reasons:
        People who are higher up understand that general rules were never meant to cover every specific situation.
        They’re more aware of the Big Picture and can visualize the fall-out that might result from improper handling.
        Even more significant, they have greater authority and get paid to take some risks and make decisions.
        I had a reservation at a magnificent hotel.
        Unfortunately, the hotel could not honor it.
        The registration clerk announced that all rooms were filled.
        I asked to see the manager. I lit a cigar, rested an elbow on the marble check-in counter, and asked the manager, “What if the president of Mexico showed up? Would you have a room for him?”
        “Sí señor …” I blew a smoke ring toward the ceiling.
        “Well, he’s not coming, so I’ll take his room.”
        Did I get a room? You bet, but I had to promise that if the president arrived, I would vacate immediately.

        Never allow yourself - or anyone who negotiates for you - unlimited authority.
        The worst person you can negotiate for is yourself.
        When you handle your own negotiations you have total authority, and it’s easy to make snap decisions without making proper use of your time.
        How can you get around this? By imposing checks and balances on yourself.
        By deliberately limiting yourself, being obedient to your own dictates.

        Don’t negotiate on the phone.
        Saying no on the phone is easy.
        Being unreasonable on the phone is easy.
        Saying no and being unreasonable face to face is something else again.
        It’s easy for people to shaft others if they don’t see them in personal terms.
        Don’t let yourself become a bloodless statistic.

        We all want something. Prestige, freedom, money, justice, status, love, security, recognition, etc.',
        1
);

INSERT INTO notes (book_summary, book_notes, book_id)
VALUES ('Thoughts on wealth, greed, and happiness. Good insights into the investing mindset. Well-written without fluff. Some great counter-intuitive surprises.',
        'Study the history of greed, insecurity, and optimism.

        History never repeats itself. Man always does.

        The person who grew up in poverty thinks about risk and reward in ways the child of a wealthy banker cannot fathom.
        The Australian who hasn’t seen a recession in 30 years has experienced something no American ever has.
        People’s lifetime investment decisions are heavily anchored to the experiences those investors had in their own generation - especially experiences early in their adult life.
        Individual investors’ willingness to bear risk depends on personal history. Not intelligence, or education, or sophistication. Just the dumb luck of when and where you were born.
        Their view of money was formed in different worlds.

        Every transaction he agreed to broke the law.
        “You don’t suppose you can run a railroad in accordance with the statutes of the State of New York, do you?”
        Laws didn’t accommodate railroads during Vanderbilt’s day. So he said “to hell with it” and went ahead anyway.
        You can praise Vanderbilt for flaunting the law with as much passion as you criticize Enron for doing the same.
        Perhaps one got lucky by avoiding the arm of the law while the other found itself on the side of risk.

        You’ll get closer to actionable takeaways by looking for broad patterns of success and failure. The more common the pattern, the more applicable it might be to your life.

        Success is a lousy teacher. It seduces smart people into thinking they can’t lose.
        Failure can be a lousy teacher, because it seduces smart people into thinking their decisions were terrible when sometimes they just reflect the unforgiving realities of risk.

        Arrange your financial life in a way that a bad investment here and a missed financial goal there won’t wipe you out so you can keep playing until the odds fall in your favor.

        To make money they didn’t have and didn’t need, they risked what they did have and did need. And that’s foolish. It is just plain foolish.
        If you risk something that is important to you for something that is unimportant to you, it just does not make any sense.

        The hardest financial skill is getting the goalpost to stop moving.
        An insatiable appetite for more will push you to the point of regret.

        Warren Buffett’s net worth is $84.5 billion.
        Of that, $84.2 billion was accumulated after his 50th birthday.
        $81.5 billion came after he qualified for Social Security, in his mid-60s.
        Had he started investing in his 30s and retired in his 60s, few people would have ever heard of him.
        Buffett began serious investing when he was 10 years old. By the time he was 30 he had a net worth of $1 million, or $9.3 million adjusted for inflation.
        What if he was a more normal person, spending his teens and 20s exploring the world and finding his passion, and by age 30 his net worth was, say, $25,000?
        And let’s say he still went on to earn the extraordinary annual investment returns he’s been able to generate (22% annually), but quit investing and retired at age 60 to play golf and spend time with his grandkids.
        What would a rough estimate of his net worth be today? Not $84.5 billion. $11.9 million. 99.9% less than his actual net worth.
        His skill is investing, but his secret is time. That’s how compounding works.

        Linear thinking is so much more intuitive than exponential thinking.
        If I ask you to calculate 8+8+8+8+8+8+8+8+8 in your head, you can do it in a few seconds (it’s 72).
        If I ask you to calculate 8×8×8×8×8×8×8×8×8, your head will explode (it’s 134,217,728).

        There are books on economic cycles, trading strategies, and sector bets.
        But the most powerful and important book should be called Shut Up And Wait.
        It’s just one page with a long-term chart of economic growth.
        Only one way to stay wealthy: some combination of frugality and paranoia.
        To summarize money success in a single word it would be “survival.”

        Getting money requires taking risks, being optimistic, and putting yourself out there.
        But keeping money requires the opposite of taking risk.
        It requires humility, and fear that what you’ve made can be taken away from you just as fast.

        Buffett achieved his investment returns:
        He didn’t get carried away with debt. He didn’t panic and sell during the 14 recessions he’s lived through.
        He didn’t attach himself to one strategy, one world view, or one passing trend.
        He didn’t rely on others’ money (managing investments through a public company meant investors couldn’t withdraw their capital).
        He didn’t burn himself out and quit or retire.
        He survived.

        More than I want big returns, I want to be financially unbreakable.

        The great art dealers operated like index funds. They bought everything they could.
        And they bought it in portfolios, not individual pieces they happened to like.
        Then they sat and waited for a few winners to emerge. That’s all that happens.
        Perhaps 99% of the works someone like Berggruen acquired in his life turned out to be of little value. But that doesn’t particularly matter if the other 1% turn out to be the work of someone like Picasso.
        Berggruen could be wrong most of the time and still end up stupendously right.
        A lot of things in business and investing work this way.
        Since 1980, 40% of all Russell 3000 stock components lost at least 70% of their value and never recovered over this period.
        Effectively all of the index’s overall returns came from 7% of component companies that outperformed.

        In 2018, Amazon drove 6% of the S&P 500’s returns.
        And Amazon’s growth is almost entirely due to Prime and Amazon Web Services, which itself are tail events in a company that has experimented with hundreds of products, from the Fire Phone to travel agencies.
        Apple was responsible for almost 7% of the index’s returns in 2018. And it is driven overwhelmingly by the iPhone.

        Netflix CEO Reed Hastings once announced his company was canceling several big-budget productions.
        He responded: Our hit ratio is way too high right now. I’m always pushing the content team. We have to take more risk. You have to try more crazy things, because we should have a higher cancel rate overall. These are not delusions or failures of responsibility. They are a smart acknowledgement of how tails drive success.

        The highest form of wealth is the ability to wake up every morning and say, “I can do whatever I want today.”

        Your kids don’t want your money (or what your money buys) anywhere near as much as they want you. Specifically, they want you with them.

        Wealth is what you don’t see.
        Wealth is the nice cars not purchased, watches not worn, the clothes forgone and the first-class upgrade declined.
        Wealth is financial assets that haven’t yet been converted into the stuff you see.
        If you spend money on things, you will end up with the things and not the money.
        Wealth is hidden. It’s income not spent.

        When most people say they want to be a millionaire, what they might actually mean is “I’d like to spend a million dollars.”
        And that is literally the opposite of being a millionaire.

        Say you and I have the same net worth. And say you’re a better investor than me. I can earn 8% annual returns and you can earn 12% annual returns.
        But I’m more efficient with my money. Let’s say I need half as much money to be happy while your lifestyle compounds as fast as your assets.
        I’m better off than you are, despite being a worse investor.
        I’m getting more benefit from my investments despite lower returns.
        The same is true for incomes. Learning to be happy with less money creates a gap between what you have and what you want - similar to the gap you get from growing your paycheck, but easier and more in your control. A high savings rate means having lower expenses than you otherwise could, and having lower expenses means your savings go farther than they would if you spent more. Think about this in the context of how much time and effort goes into achieving 0.1% of annual investment outperformance - millions of hours of research, tens of billions of dollars of effort from professionals - and it’s easy to see what’s potentially more important or worth chasing. There are

        A trap many investors fall into is what I call “historians as prophets” fallacy:
        An overreliance on past data as a signal to future conditions in a field where innovation and change are the lifeblood of progress.

        Investing is not a hard science.

        Experience leads to overconfidence more than forecasting ability.

        The correct lesson to learn from surprises is that the world is surprising.

        History can be a misleading guide to the future of the economy and stock market because it doesn’t account for structural changes that are relevant to today’s world.
        S&P 500 did not include financial stocks until 1976; today, financials make up 16% of the index.
        Technology stocks were virtually nonexistent 50 years ago. Today, they’re more than a fifth of the index.
        Accounting rules have changed over time. So have disclosures, auditing, and the amount of market liquidity.
        Things changed.
        There are plenty of theories on why recessions have become less frequent.
        It doesn’t particularly matter what caused the change. What matters is that things clearly changed.

        Graham’s classic book, The Intelligent Investor: When you try applying some of these formulas: few of them actually work.
        Graham advocated purchasing stocks trading for less than their net working assets - basically cash in the bank minus all debts. This sounds great, but few stocks actually trade that cheaply anymore - other than, say, a penny stock accused of accounting fraud.
        One of Graham’s criteria instructs conservative investors to avoid stocks trading for more than 1.5 times book value. If you followed this rule over the last decade you would have owned almost nothing but insurance and bank stocks. There is no world where that is OK.
        Just before he died Graham was asked whether detailed analysis of individual stocks - a tactic he became famous for - remained a strategy he favored. He answered: In general, no. I am no longer an advocate of elaborate techniques of security analysis in order to find superior value opportunities. This was a rewarding activity, say, 40 years ago, when our textbook was first published. But the situation has changed a great deal since then.
        What changed was: Competition grew as opportunities became well known; technology made information more accessible; and industries changed as the economy shifted from industrial to technology sectors, which have different business cycles and capital uses. Things changed.

        An interesting quirk of investing history is that the further back you look, the more likely you are to be examining a world that no longer applies to today.
        Many investors and economists take comfort in knowing their forecasts are backed up by decades, even centuries, of data.
        But since economies evolve, recent history is often the best guide to the future, because it’s more likely to include important conditions that are relevant to the future.

        The twelve most dangerous words in investing are, “The four most dangerous words in investing are, ‘it’s different this time.’”

        The further back in history you look, the more general your takeaways should be.
        General things like people’s relationship to greed and fear, how they behave under stress, and how they respond to incentives tend to be stable in time. The history of money is useful for that kind of stuff.
        But specific trends, specific trades, specific sectors, specific causal relationships about markets, and what people should do with their money are always an example of evolution in progress.
        Historians are not prophets.

        Examples of smart financial behavior can be found in blackjack players who practice card counting.
        Bet more when the odds of getting a card you want are in your favor and less when they are against you.
        Their strategy relies entirely on humility - humility that they don’t know, and cannot know exactly what’s going to happen next, so play their hand accordingly.
        The card counting system works because it tilts.

        The purpose of the margin of safety is to render the forecast unnecessary.
        I assume the future returns I’ll earn in my lifetime will be ⅓ lower than the historic average.
        So I save more than I would if I assumed the future will resemble the past.
        It’s my margin of safety.

        When analyzing other people’s home renovation plans, most people estimate the project will run between 25% and 50% over budget.
        But when it comes to their own projects, people estimate that renovations will be completed on time and at budget.

        “The best way to achieve felicity is to aim low,” says Charlie Munger.

        All of us are walking around with an illusion - an illusion that history, our personal history, has just come to an end, that we have just recently become the people that we were always meant to be and will be for the rest of our lives.
        We tend to never learn this lesson.
        People from age 18 to 68 underestimate how much they will change in the future.

        Charlie Munger says the first rule of compounding is to never interrupt it unnecessarily.

        Optimism is a belief that the odds of a good outcome are in your favor over time, even when there will be setbacks along the way.
        Optimism is the best bet for most people because the world tends to get better for most people most of the time.
        Pessimism sounds smarter. It’s intellectually captivating, and it’s paid more attention than optimism.
        Pessimism just sounds smarter and more plausible than optimism.
        Tell someone that everything will be great and they’re likely to either shrug you off or offer a skeptical eye.
        Tell someone they’re in danger and you have their undivided attention.
        Say we’ll have a big recession and newspapers will call you.
        Say we’re headed for average growth and no one particularly cares.
        Say we’re nearing the next Great Depression and you’ll get on TV.
        The investing newsletter industry has known this for years, and is now populated by prophets of doom despite operating in an environment where the stock market has gone up 17,000-fold in the last century.

        Extremely good and extremely bad circumstances rarely stay that way for long because supply and demand adapt.

        Between 2007 and 2009:
        The same knowledge, the same tools, the same ideas. Nothing changed! Why were we poorer? Why were we more pessimistic?
        Only one change: The stories we told ourselves about the economy.
        In 2007, we told a story about the stability of housing prices, the prudence of bankers, and the ability of financial markets to accurately price risk.
        In 2009 we stopped believing that story.
        That’s the only thing that changed. But it made all the difference in the world.

        The independent feeling I get from owning our house outright far exceeds the known financial gain I’d get from leveraging our assets with a cheap mortgage.
        Eliminating the monthly payment feels better than maximizing the long-term value of our assets.
        It makes me feel independent.
        On paper it’s defenseless. But it works for us. We like it. That’s what matters.
        Good decisions aren’t always rational.',
        2
);

SELECT * 
FROM books b
JOIN notes n
ON b.id = n.book_id;
