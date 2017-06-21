.class public final enum Lcom/vkcoffee/android/ui/Font;
.super Ljava/lang/Enum;
.source "Font.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/ui/Font$TypefaceSpan;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/vkcoffee/android/ui/Font;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/vkcoffee/android/ui/Font;

.field private static final FONTS_FOLDER:Ljava/lang/String; = "fonts"

.field public static final enum Medium:Lcom/vkcoffee/android/ui/Font;


# instance fields
.field public final typeface:Landroid/graphics/Typeface;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 14
    new-instance v0, Lcom/vkcoffee/android/ui/Font;

    const-string/jumbo v1, "Medium"

    const-string/jumbo v3, "Roboto-Medium.ttf"

    const-string/jumbo v4, "sans-serif-medium"

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/vkcoffee/android/ui/Font;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/vkcoffee/android/ui/Font;->Medium:Lcom/vkcoffee/android/ui/Font;

    .line 12
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/vkcoffee/android/ui/Font;

    sget-object v1, Lcom/vkcoffee/android/ui/Font;->Medium:Lcom/vkcoffee/android/ui/Font;

    aput-object v1, v0, v2

    sput-object v0, Lcom/vkcoffee/android/ui/Font;->$VALUES:[Lcom/vkcoffee/android/ui/Font;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .param p3, "localPath"    # Ljava/lang/String;
    .param p4, "systemName"    # Ljava/lang/String;
    .param p5, "typefaceStyle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 21
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 22
    invoke-static {p4, p5}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/ui/Font;->typeface:Landroid/graphics/Typeface;

    .line 26
    :goto_0
    return-void

    .line 24
    :cond_0
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "fonts/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/ui/Font;->typeface:Landroid/graphics/Typeface;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/vkcoffee/android/ui/Font;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 12
    const-class v0, Lcom/vkcoffee/android/ui/Font;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/ui/Font;

    return-object v0
.end method

.method public static values()[Lcom/vkcoffee/android/ui/Font;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/vkcoffee/android/ui/Font;->$VALUES:[Lcom/vkcoffee/android/ui/Font;

    invoke-virtual {v0}, [Lcom/vkcoffee/android/ui/Font;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vkcoffee/android/ui/Font;

    return-object v0
.end method
