.class public Lcom/vkcoffee/android/ui/Fonts;
.super Ljava/lang/Object;
.source "Fonts.java"


# static fields
.field private static condensed:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field

.field private static lightItalicTypeface:Landroid/graphics/Typeface;

.field private static lightTypeface:Landroid/graphics/Typeface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/vkcoffee/android/ui/Fonts;->condensed:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getRobotoCondensed(I)Landroid/graphics/Typeface;
    .locals 5
    .param p0, "style"    # I

    .prologue
    .line 40
    sget-object v3, Lcom/vkcoffee/android/ui/Fonts;->condensed:Landroid/util/SparseArray;

    const/4 v4, 0x0

    invoke-virtual {v3, p0, v4}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Typeface;

    .line 41
    .local v1, "result":Landroid/graphics/Typeface;
    if-eqz v1, :cond_0

    move-object v2, v1

    .line 66
    .end local v1    # "result":Landroid/graphics/Typeface;
    .local v2, "result":Landroid/graphics/Typeface;
    :goto_0
    return-object v2

    .line 44
    .end local v2    # "result":Landroid/graphics/Typeface;
    .restart local v1    # "result":Landroid/graphics/Typeface;
    :cond_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-lt v3, v4, :cond_1

    .line 45
    const-string/jumbo v3, "sans-serif-condensed"

    invoke-static {v3, p0}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    .line 65
    :goto_1
    sget-object v3, Lcom/vkcoffee/android/ui/Fonts;->condensed:Landroid/util/SparseArray;

    invoke-virtual {v3, p0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object v2, v1

    .line 66
    .end local v1    # "result":Landroid/graphics/Typeface;
    .restart local v2    # "result":Landroid/graphics/Typeface;
    goto :goto_0

    .line 47
    .end local v2    # "result":Landroid/graphics/Typeface;
    .restart local v1    # "result":Landroid/graphics/Typeface;
    :cond_1
    const-string/jumbo v0, ""

    .line 48
    .local v0, "file":Ljava/lang/String;
    packed-switch p0, :pswitch_data_0

    .line 60
    const-string/jumbo v0, "fonts/RobotoCondensed-Regular.ttf"

    .line 63
    :goto_2
    sget-object v3, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-static {v3, v0}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    goto :goto_1

    .line 50
    :pswitch_0
    const-string/jumbo v0, "fonts/RobotoCondensed-Bold.ttf"

    .line 51
    goto :goto_2

    .line 53
    :pswitch_1
    const-string/jumbo v0, "fonts/RobotoCondensed-Italic.ttf"

    .line 54
    goto :goto_2

    .line 56
    :pswitch_2
    const-string/jumbo v0, "fonts/RobotoCondensed-BoldItalic.ttf"

    .line 57
    goto :goto_2

    .line 48
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static getRobotoLight()Landroid/graphics/Typeface;
    .locals 2

    .prologue
    .line 16
    sget-object v0, Lcom/vkcoffee/android/ui/Fonts;->lightTypeface:Landroid/graphics/Typeface;

    if-eqz v0, :cond_0

    .line 17
    sget-object v0, Lcom/vkcoffee/android/ui/Fonts;->lightTypeface:Landroid/graphics/Typeface;

    .line 24
    :goto_0
    return-object v0

    .line 19
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 20
    const-string/jumbo v0, "sans-serif-light"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/vkcoffee/android/ui/Fonts;->lightTypeface:Landroid/graphics/Typeface;

    .line 24
    :goto_1
    sget-object v0, Lcom/vkcoffee/android/ui/Fonts;->lightTypeface:Landroid/graphics/Typeface;

    goto :goto_0

    .line 22
    :cond_1
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string/jumbo v1, "fonts/Roboto-Light.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/vkcoffee/android/ui/Fonts;->lightTypeface:Landroid/graphics/Typeface;

    goto :goto_1
.end method

.method public static getRobotoLightItalic()Landroid/graphics/Typeface;
    .locals 2

    .prologue
    .line 28
    sget-object v0, Lcom/vkcoffee/android/ui/Fonts;->lightItalicTypeface:Landroid/graphics/Typeface;

    if-eqz v0, :cond_0

    .line 29
    sget-object v0, Lcom/vkcoffee/android/ui/Fonts;->lightItalicTypeface:Landroid/graphics/Typeface;

    .line 36
    :goto_0
    return-object v0

    .line 31
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 32
    const-string/jumbo v0, "sans-serif-light"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/vkcoffee/android/ui/Fonts;->lightItalicTypeface:Landroid/graphics/Typeface;

    .line 36
    :goto_1
    sget-object v0, Lcom/vkcoffee/android/ui/Fonts;->lightItalicTypeface:Landroid/graphics/Typeface;

    goto :goto_0

    .line 34
    :cond_1
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string/jumbo v1, "fonts/Roboto-LightItalic.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/vkcoffee/android/ui/Fonts;->lightItalicTypeface:Landroid/graphics/Typeface;

    goto :goto_1
.end method
