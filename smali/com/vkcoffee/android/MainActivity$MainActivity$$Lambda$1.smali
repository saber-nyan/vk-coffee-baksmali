.class public Lcom/vkcoffee/android/MainActivity$MainActivity$$Lambda$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/text/Html$ImageGetter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MainActivity$$Lambda$1"
.end annotation


# instance fields
.field private final arg$1:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 575
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 576
    iput-object p1, p0, Lcom/vkcoffee/android/MainActivity$MainActivity$$Lambda$1;->arg$1:Landroid/content/Context;

    .line 577
    return-void
.end method

.method public static lambdaFactory$(Landroid/content/Context;)Landroid/text/Html$ImageGetter;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 580
    new-instance v0, Lcom/vkcoffee/android/MainActivity$MainActivity$$Lambda$1;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/MainActivity$MainActivity$$Lambda$1;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 584
    iget-object v0, p0, Lcom/vkcoffee/android/MainActivity$MainActivity$$Lambda$1;->arg$1:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/vkcoffee/android/MainActivity;->lambda$showAbout$651(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method
