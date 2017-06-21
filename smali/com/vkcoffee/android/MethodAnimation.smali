.class public Lcom/vkcoffee/android/MethodAnimation;
.super Landroid/view/animation/Animation;
.source "MethodAnimation.java"


# instance fields
.field method:Ljava/lang/reflect/Method;

.field obj:Ljava/lang/Object;

.field param:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "addParam"    # Ljava/lang/Object;

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 15
    if-nez p3, :cond_0

    .line 17
    :try_start_0
    iput-object p1, p0, Lcom/vkcoffee/android/MethodAnimation;->obj:Ljava/lang/Object;

    .line 18
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v1, p2, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/vkcoffee/android/MethodAnimation;->method:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 30
    :goto_0
    return-void

    .line 23
    :cond_0
    :try_start_1
    iput-object p1, p0, Lcom/vkcoffee/android/MethodAnimation;->obj:Ljava/lang/Object;

    .line 24
    iput-object p3, p0, Lcom/vkcoffee/android/MethodAnimation;->param:Ljava/lang/Object;

    .line 25
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v1, p2, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/vkcoffee/android/MethodAnimation;->method:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 26
    :catch_0
    move-exception v0

    .line 27
    .local v0, "x":Ljava/lang/Exception;
    const-string/jumbo v1, "vk"

    invoke-static {v1, v0}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 19
    .end local v0    # "x":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 5
    .param p1, "interpolatedTime"    # F
    .param p2, "t"    # Landroid/view/animation/Transformation;

    .prologue
    .line 33
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->clear()V

    .line 35
    :try_start_0
    iget-object v0, p0, Lcom/vkcoffee/android/MethodAnimation;->param:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/vkcoffee/android/MethodAnimation;->method:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/vkcoffee/android/MethodAnimation;->obj:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    :goto_0
    return-void

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/MethodAnimation;->method:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/vkcoffee/android/MethodAnimation;->obj:Ljava/lang/Object;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/vkcoffee/android/MethodAnimation;->param:Ljava/lang/Object;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 40
    :catch_0
    move-exception v0

    goto :goto_0
.end method
