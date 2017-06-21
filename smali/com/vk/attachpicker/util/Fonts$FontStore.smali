.class Lcom/vk/attachpicker/util/Fonts$FontStore;
.super Ljava/lang/Object;
.source "Fonts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vk/attachpicker/util/Fonts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FontStore"
.end annotation


# instance fields
.field private final path:Ljava/lang/String;

.field private typeface:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/vk/attachpicker/util/Fonts$FontStore;->path:Ljava/lang/String;

    .line 36
    return-void
.end method


# virtual methods
.method getTypeFace()Landroid/graphics/Typeface;
    .locals 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/vk/attachpicker/util/Fonts$FontStore;->typeface:Landroid/graphics/Typeface;

    if-nez v0, :cond_0

    .line 40
    invoke-static {}, Lcom/vk/attachpicker/Picker;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    iget-object v1, p0, Lcom/vk/attachpicker/util/Fonts$FontStore;->path:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/attachpicker/util/Fonts$FontStore;->typeface:Landroid/graphics/Typeface;

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/vk/attachpicker/util/Fonts$FontStore;->typeface:Landroid/graphics/Typeface;

    return-object v0
.end method
