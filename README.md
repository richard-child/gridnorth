# Static site generator

Grid North Design is built using the [Middleman](https://middlemanapp.com) static site generator.

* Start server: `middleman`
* Build: `middleman build`
* Deploy to AWS: `middleman s3_sync`

# CSS architecture

The CSS for Grid North Design is based on the Inverted Triangle CSS (ITCSS) architecture. ITCSS involves visualising your CSS project as a layered upside-down triangle.

*The following information is taken directly from the ITCSS net mag article by Harry Roberts.*

### Layers of the inverted triangle

1. Settings
2. Tools
3. Generic
4. Elements
5. Objects
6. Components
7. Trumps

Each layer is a logical progression, getting more specific, explicit and intentioned.

### Prerequisites

The prerequisites for working with ITCSS are:

* No CSS IDs
* You build reusable UI patterns and not 'pages'
* You don't believe that 'less markup' and 'clean markup' are the same thing; and you understand that binding onto classes, rather than bare HTML elements, provides a more robust and scalable architecture

### 1. Settings

Global settings for your project. Examples of global settings might be things like the base font, colour palettes etc.

### 2. Tools

Globally available tooling - namely mixins and functions.

### 3. Generic

Very high-level, far reaching styles. Rarely modified and the same across projects. It contains things like CSS resets, global box-sizing rules etc.

### 4. Elements

Bare, unclassed HTML elements.

### 5. Objects

Class-based selectors that are concerned with styling non-cosmetic design patterns. It contains things like a .container element, layout systems etc.

### 6. Components

The components layer contains styling for recognisable pieces of UI. Adding new components and features usually makes up the majority of development.

### 7. Trumps

This layer trumps all other layers and has the power to override anything at all that has gone before it. A lot of declarations will carry !important.

### Naming convention

_[LAYER].[PARTIAL].sass

Example:

_settings.global.sass

Each CSS file should be kept as small as possible, with each one containing only as much CSS as it needs to fulfil its role.
