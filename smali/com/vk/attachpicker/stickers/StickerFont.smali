.class public final enum Lcom/vk/attachpicker/stickers/StickerFont;
.super Ljava/lang/Enum;
.source "StickerFont.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/vk/attachpicker/stickers/StickerFont;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/vk/attachpicker/stickers/StickerFont;

.field public static final enum IMPACT:Lcom/vk/attachpicker/stickers/StickerFont;

.field public static final enum LOBSTER_REGULAR:Lcom/vk/attachpicker/stickers/StickerFont;

.field public static final enum ROBOTO_BOLD:Lcom/vk/attachpicker/stickers/StickerFont;


# instance fields
.field final iconResId:I

.field final typeface:Landroid/graphics/Typeface;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 9
    new-instance v0, Lcom/vk/attachpicker/stickers/StickerFont;

    const-string/jumbo v1, "ROBOTO_BOLD"

    const v2, 0x7f0202aa

    invoke-static {}, Lcom/vk/attachpicker/util/Fonts;->getRobotoBold()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/vk/attachpicker/stickers/StickerFont;-><init>(Ljava/lang/String;IILandroid/graphics/Typeface;)V

    sput-object v0, Lcom/vk/attachpicker/stickers/StickerFont;->ROBOTO_BOLD:Lcom/vk/attachpicker/stickers/StickerFont;

    .line 10
    new-instance v0, Lcom/vk/attachpicker/stickers/StickerFont;

    const-string/jumbo v1, "LOBSTER_REGULAR"

    const v2, 0x7f0202ab

    invoke-static {}, Lcom/vk/attachpicker/util/Fonts;->getLobsterRegular()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/vk/attachpicker/stickers/StickerFont;-><init>(Ljava/lang/String;IILandroid/graphics/Typeface;)V

    sput-object v0, Lcom/vk/attachpicker/stickers/StickerFont;->LOBSTER_REGULAR:Lcom/vk/attachpicker/stickers/StickerFont;

    .line 11
    new-instance v0, Lcom/vk/attachpicker/stickers/StickerFont;

    const-string/jumbo v1, "IMPACT"

    const v2, 0x7f0202ac

    invoke-static {}, Lcom/vk/attachpicker/util/Fonts;->getImpact()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/vk/attachpicker/stickers/StickerFont;-><init>(Ljava/lang/String;IILandroid/graphics/Typeface;)V

    sput-object v0, Lcom/vk/attachpicker/stickers/StickerFont;->IMPACT:Lcom/vk/attachpicker/stickers/StickerFont;

    .line 7
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/vk/attachpicker/stickers/StickerFont;

    sget-object v1, Lcom/vk/attachpicker/stickers/StickerFont;->ROBOTO_BOLD:Lcom/vk/attachpicker/stickers/StickerFont;

    aput-object v1, v0, v4

    sget-object v1, Lcom/vk/attachpicker/stickers/StickerFont;->LOBSTER_REGULAR:Lcom/vk/attachpicker/stickers/StickerFont;

    aput-object v1, v0, v5

    sget-object v1, Lcom/vk/attachpicker/stickers/StickerFont;->IMPACT:Lcom/vk/attachpicker/stickers/StickerFont;

    aput-object v1, v0, v6

    sput-object v0, Lcom/vk/attachpicker/stickers/StickerFont;->$VALUES:[Lcom/vk/attachpicker/stickers/StickerFont;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILandroid/graphics/Typeface;)V
    .locals 0
    .param p3, "iconResId"    # I
    .param p4, "typeface"    # Landroid/graphics/Typeface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/graphics/Typeface;",
            ")V"
        }
    .end annotation

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 17
    iput p3, p0, Lcom/vk/attachpicker/stickers/StickerFont;->iconResId:I

    .line 18
    iput-object p4, p0, Lcom/vk/attachpicker/stickers/StickerFont;->typeface:Landroid/graphics/Typeface;

    .line 19
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/vk/attachpicker/stickers/StickerFont;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 7
    const-class v0, Lcom/vk/attachpicker/stickers/StickerFont;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/vk/attachpicker/stickers/StickerFont;

    return-object v0
.end method

.method public static values()[Lcom/vk/attachpicker/stickers/StickerFont;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/vk/attachpicker/stickers/StickerFont;->$VALUES:[Lcom/vk/attachpicker/stickers/StickerFont;

    invoke-virtual {v0}, [Lcom/vk/attachpicker/stickers/StickerFont;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vk/attachpicker/stickers/StickerFont;

    return-object v0
.end method
