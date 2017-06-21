.class public Lcom/vkcoffee/android/ui/UIHacks;
.super Ljava/lang/Object;
.source "UIHacks.java"


# static fields
.field private static sInitializeScrollbars:Ljava/lang/reflect/Method;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method

.method public static enableScrollbars(Landroid/view/View;)V
    .locals 7
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 22
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 23
    .local v0, "a":Landroid/content/res/TypedArray;
    sget-object v2, Lcom/vkcoffee/android/ui/UIHacks;->sInitializeScrollbars:Ljava/lang/reflect/Method;

    if-nez v2, :cond_0

    .line 24
    const-class v2, Landroid/view/View;

    const-string/jumbo v3, "initializeScrollbars"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/content/res/TypedArray;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/vkcoffee/android/ui/UIHacks;->sInitializeScrollbars:Ljava/lang/reflect/Method;

    .line 25
    sget-object v2, Lcom/vkcoffee/android/ui/UIHacks;->sInitializeScrollbars:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 27
    :cond_0
    sget-object v2, Lcom/vkcoffee/android/ui/UIHacks;->sInitializeScrollbars:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :goto_0
    return-void

    .line 29
    :catch_0
    move-exception v1

    .line 30
    .local v1, "e":Ljava/lang/Throwable;
    const-string/jumbo v2, "UIHacks"

    const-string/jumbo v3, "enableScrollbars(View)"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
