.class public Lcom/vk/attachpicker/util/Fonts;
.super Ljava/lang/Object;
.source "Fonts.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vk/attachpicker/util/Fonts$FontStore;
    }
.end annotation


# static fields
.field private static final impact:Lcom/vk/attachpicker/util/Fonts$FontStore;

.field private static final lobsterRegular:Lcom/vk/attachpicker/util/Fonts$FontStore;

.field private static final robotoBold:Lcom/vk/attachpicker/util/Fonts$FontStore;

.field private static final robotoMedium:Lcom/vk/attachpicker/util/Fonts$FontStore;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 8
    new-instance v0, Lcom/vk/attachpicker/util/Fonts$FontStore;

    const-string/jumbo v1, "fonts/Roboto-Medium.ttf"

    invoke-direct {v0, v1}, Lcom/vk/attachpicker/util/Fonts$FontStore;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/vk/attachpicker/util/Fonts;->robotoMedium:Lcom/vk/attachpicker/util/Fonts$FontStore;

    .line 9
    new-instance v0, Lcom/vk/attachpicker/util/Fonts$FontStore;

    const-string/jumbo v1, "fonts/Roboto-Bold.ttf"

    invoke-direct {v0, v1}, Lcom/vk/attachpicker/util/Fonts$FontStore;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/vk/attachpicker/util/Fonts;->robotoBold:Lcom/vk/attachpicker/util/Fonts$FontStore;

    .line 10
    new-instance v0, Lcom/vk/attachpicker/util/Fonts$FontStore;

    const-string/jumbo v1, "fonts/Lobster-Regular.ttf"

    invoke-direct {v0, v1}, Lcom/vk/attachpicker/util/Fonts$FontStore;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/vk/attachpicker/util/Fonts;->lobsterRegular:Lcom/vk/attachpicker/util/Fonts$FontStore;

    .line 11
    new-instance v0, Lcom/vk/attachpicker/util/Fonts$FontStore;

    const-string/jumbo v1, "fonts/Impact.ttf"

    invoke-direct {v0, v1}, Lcom/vk/attachpicker/util/Fonts$FontStore;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/vk/attachpicker/util/Fonts;->impact:Lcom/vk/attachpicker/util/Fonts$FontStore;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method public static getImpact()Landroid/graphics/Typeface;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/vk/attachpicker/util/Fonts;->impact:Lcom/vk/attachpicker/util/Fonts$FontStore;

    invoke-virtual {v0}, Lcom/vk/attachpicker/util/Fonts$FontStore;->getTypeFace()Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public static getLobsterRegular()Landroid/graphics/Typeface;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/vk/attachpicker/util/Fonts;->lobsterRegular:Lcom/vk/attachpicker/util/Fonts$FontStore;

    invoke-virtual {v0}, Lcom/vk/attachpicker/util/Fonts$FontStore;->getTypeFace()Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public static getRobotoBold()Landroid/graphics/Typeface;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/vk/attachpicker/util/Fonts;->robotoBold:Lcom/vk/attachpicker/util/Fonts$FontStore;

    invoke-virtual {v0}, Lcom/vk/attachpicker/util/Fonts$FontStore;->getTypeFace()Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public static getRobotoMedium()Landroid/graphics/Typeface;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/vk/attachpicker/util/Fonts;->robotoMedium:Lcom/vk/attachpicker/util/Fonts$FontStore;

    invoke-virtual {v0}, Lcom/vk/attachpicker/util/Fonts$FontStore;->getTypeFace()Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method
