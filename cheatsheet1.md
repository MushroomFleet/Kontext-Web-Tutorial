FLUX.1 Kontext thinks differently than traditional AI models. Instead of describing entire scenes, you're giving editing instructions to something that already understands what's in your image. This changes how you should write prompts.

Instruction verbs that work well
FLUX.1 Kontext responds best to clear action verbs. Here are the most effective ones.

For modifications: "Change", "Make", "Transform", "Convert"

"Change the sky to sunset"
"Make the walls brick"
"Convert to black and white"
For additions: "Add", "Include", "Put"

"Add sunglasses to the person"
"Put mountains in the background"
For removals: "Remove", "Delete", "Take away"

"Remove the person in the background"
"Delete the text from the sign"
For replacements: "Replace", "Swap", "Substitute"

"Replace 'OPEN' with 'CLOSED'"
"Swap the blue car with a red truck"
For positioning: "Move", "Place", "Position"

"Move the person to the left side"
"Place a tree behind the house"
Simple instruction templates
These patterns work for most common editing tasks. Start with these frameworks and add more details as needed.

Object modification: "[Action] the [object] to [description]"

"Change the car to red"
"Make the building taller"
Text replacement: "Replace '[old text]' with '[new text]'"

"Replace 'SALE' with 'SOLD'"
Style changes: "Convert to [style] while maintaining [what to preserve]"

"Convert to watercolor while maintaining the composition"
Character edits: "Change the [person description] to [change] while preserving [identity features]"

"Change the woman with blonde hair to wearing a red dress while preserving her facial features"
Start simple and be specific
FLUX.1 Kontext excels at iterative editing, not scene recreation. Instead of describing entire scenes, focus on specific changes. "Change the car color to red" tells Kontext exactly what to modify. "Make this image have a red car in it" sounds like you're asking it to recreate the entire scene with a red car, which isn't what you want.

Don't try to make five changes in one instruction. Start with the most important edit, see the result, then add the next change. This approach gives you more control and better results, especially since the model has a 512 token maximum for prompts.

Step 1: "Change to daytime"
Step 2: "Add people walking on the sidewalk"
Step 3: "Make the building walls brick"
Each edit builds on the previous one while preserving what you've already accomplished.

Text editing has special rules
Use quotation marks around the specific text you want to change. This tells Kontext you're doing text replacement, not adding new text elements.

Good: Replace "SALE" with "SOLD"
Less effective: Change the sign to say SOLD instead of SALE
Pro tip: If you want to preserve the original styling, add "while maintaining the same font style and color". Complex or stylized fonts work better when you explicitly ask to preserve their characteristics.

Style transfer needs specific language
Name the exact style you want. "Make it artistic" is too vague. "Convert to watercolor painting" or "Transform to pencil sketch with cross-hatching" gives Kontext clear direction.

When using style references: If you have a reference image with a specific style, use prompts like "Using this style, [describe what you want to generate]". This works especially well with FLUX.1 Kontext [pro].

Composition control prevents unwanted changes
Simple background changes can accidentally move your subject. Instead of "put him on a beach", try "change the background to a beach while keeping the person in the exact same position, scale, and pose".

When you want surgical precision: Add phrases like "maintain identical subject placement" or "only replace the environment around them" to prevent unwanted repositioning.

Common troubleshooting
When editing people, avoid pronouns. Instead of saying "make her hair longer," say "make the woman with short black hair have longer hair". Kontext needs clear identity markers to maintain consistency across edits.

If Kontext changes too much: Be more explicit about what should stay the same. Add "while maintaining all other aspects of the original image" or "everything else should remain unchanged".

If character identity drifts: Use more specific descriptors and avoid broad transformation verbs. "Change the clothes to medieval armor" works better than "transform into a medieval character".

If style transfer loses important details: Describe the visual characteristics of the style you want. "Convert to oil painting with visible brushstrokes, thick paint texture, and rich color depth" preserves more scene information than just "make it an oil painting".