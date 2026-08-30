# Run this from inside your packwiz pack folder (after packwiz init).
# Slugs below are my best-known match for each project. packwiz mr add does a
# fuzzy search if a slug doesn't hit exactly -- if a line errors, re-run it with
# a plain search term instead of the slug, e.g.: packwiz mr add "macaw's furniture"
# and pick from the list it shows you.
#
# CF-only mods (not on Modrinth, or I couldn't confirm) use packwiz cf add --
# flagged inline.

$ErrorActionPreference = "Stop"

Write-Host "== Create ecosystem ==" -ForegroundColor Cyan
packwiz mr add create
packwiz mr add create-aeronautics
packwiz mr add create-enchantment-industry
packwiz cf add create-new-age          # CF only as far as I could confirm

Write-Host "== Performance ==" -ForegroundColor Cyan
packwiz mr add ferritecore
packwiz mr add modernfix
packwiz mr add immediatelyfast
packwiz mr add clumps
packwiz mr add entityculling
# Sodium/Lithium on NeoForge run via the Sinytra Connector compatibility layer.
# This is a 3-part combo, add carefully and test before relying on it:
packwiz mr add connector
packwiz mr add forgified-fabric-api
packwiz mr add sodium
packwiz mr add lithium

Write-Host "== World & exploration ==" -ForegroundColor Cyan
packwiz mr add terralith
packwiz mr add terrablender
packwiz mr add yungs-better-dungeons
packwiz mr add yungs-better-mineshafts
packwiz mr add yungs-better-strongholds
packwiz mr add waystones
packwiz mr add repurposed-structures
packwiz mr add streams-reflowing        # world-gen mod, must be in from world creation

Write-Host "== Realism & farming ==" -ForegroundColor Cyan
packwiz mr add farmers-delight
packwiz mr add supplementaries
packwiz mr add rightclickharvest
packwiz mr add alexs-mobs               # if this fails, search "Alex's Mobs Unofficial Port"
packwiz mr add citadel                  # Alex's Mobs dependency
packwiz mr add better-combat
packwiz mr add player-animator          # Better Combat dependency
packwiz mr add cloth-config             # shared dependency (Better Combat, Powah, etc)

Write-Host "== Custom gear ==" -ForegroundColor Cyan
packwiz mr add silent-gear
packwiz mr add silentgearjei

Write-Host "== Tech / automation extras ==" -ForegroundColor Cyan
packwiz mr add ae2                      # Applied Energistics 2 -- if slug fails, try "applied-energistics-2"
packwiz mr add powah

Write-Host "== Light magic (optional branch) ==" -ForegroundColor Cyan
packwiz mr add ars-nouveau
packwiz mr add curios
packwiz mr add geckolib

Write-Host "== Loot / artifacts (pick ONE) ==" -ForegroundColor Cyan
packwiz mr add artifacts
# packwiz mr add relics                 # alternative, don't run both

Write-Host "== World interaction QoL ==" -ForegroundColor Cyan
packwiz mr add mouse-tweaks
packwiz mr add controlling
packwiz mr add comforts
packwiz mr add natures-compass
packwiz mr add easy-villagers
packwiz mr add corpse
packwiz mr add riding-utilities
packwiz mr add wireless-redstone-cbc    # verify slug -- swapped in for "More Red"

Write-Host "== Decoration ==" -ForegroundColor Cyan
packwiz mr add rechiseled
packwiz mr add rechiseledcreate
packwiz mr add macaws-furniture
packwiz mr add macaws-fences
packwiz mr add macaws-windows
packwiz mr add macaws-roofs
packwiz mr add macaws-paths

Write-Host "== Storage & QoL ==" -ForegroundColor Cyan
packwiz mr add sophisticated-storage
packwiz mr add sophisticated-backpacks
packwiz mr add jei
packwiz mr add jade
packwiz mr add xaeros-minimap
packwiz mr add xaeros-world-map

Write-Host "== Multiplayer ==" -ForegroundColor Cyan
packwiz mr add simple-voice-chat

Write-Host "== Quests ==" -ForegroundColor Cyan
packwiz mr add ftb-quests
packwiz mr add ftb-library
packwiz mr add ftb-teams
packwiz mr add ftb-ranks

Write-Host ""
Write-Host "Done with required mods. Now add optional visual mods with -o, e.g.:" -ForegroundColor Green
Write-Host "  packwiz mr add iris -o"
Write-Host "  packwiz mr add not-enough-animations -o"
Write-Host "  packwiz mr add ambientsounds -o"
