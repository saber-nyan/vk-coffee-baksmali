.class abstract Landroid/support/v7/graphics/Palette$Generator;
.super Ljava/lang/Object;
.source "Palette.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/graphics/Palette;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "Generator"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 707
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract generate(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/graphics/Palette$Swatch;",
            ">;)V"
        }
    .end annotation
.end method

.method public getDarkMutedSwatch()Landroid/support/v7/graphics/Palette$Swatch;
    .locals 1

    .prologue
    .line 757
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDarkVibrantSwatch()Landroid/support/v7/graphics/Palette$Swatch;
    .locals 1

    .prologue
    .line 736
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLightMutedSwatch()Landroid/support/v7/graphics/Palette$Swatch;
    .locals 1

    .prologue
    .line 750
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLightVibrantSwatch()Landroid/support/v7/graphics/Palette$Swatch;
    .locals 1

    .prologue
    .line 729
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMutedSwatch()Landroid/support/v7/graphics/Palette$Swatch;
    .locals 1

    .prologue
    .line 743
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVibrantSwatch()Landroid/support/v7/graphics/Palette$Swatch;
    .locals 1

    .prologue
    .line 722
    const/4 v0, 0x0

    return-object v0
.end method
