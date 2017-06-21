.class public Lcom/vkcoffee/android/utils/ActivityLocal;
.super Ljava/lang/Object;
.source "ActivityLocal.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private activityCallbacks:Landroid/app/Application$ActivityLifecycleCallbacks;

.field private values:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/app/Activity;",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    .local p0, "this":Lcom/vkcoffee/android/utils/ActivityLocal;, "Lcom/vkcoffee/android/utils/ActivityLocal<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/utils/ActivityLocal;->values:Ljava/util/HashMap;

    .line 17
    new-instance v0, Lcom/vkcoffee/android/utils/ActivityLocal$1;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/utils/ActivityLocal$1;-><init>(Lcom/vkcoffee/android/utils/ActivityLocal;)V

    iput-object v0, p0, Lcom/vkcoffee/android/utils/ActivityLocal;->activityCallbacks:Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 59
    return-void
.end method

.method static synthetic access$000(Lcom/vkcoffee/android/utils/ActivityLocal;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/utils/ActivityLocal;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/vkcoffee/android/utils/ActivityLocal;->values:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$100(Lcom/vkcoffee/android/utils/ActivityLocal;)Landroid/app/Application$ActivityLifecycleCallbacks;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/utils/ActivityLocal;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/vkcoffee/android/utils/ActivityLocal;->activityCallbacks:Landroid/app/Application$ActivityLifecycleCallbacks;

    return-object v0
.end method


# virtual methods
.method public get(Landroid/app/Activity;)Ljava/lang/Object;
    .locals 1
    .param p1, "act"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 62
    .local p0, "this":Lcom/vkcoffee/android/utils/ActivityLocal;, "Lcom/vkcoffee/android/utils/ActivityLocal<TT;>;"
    iget-object v0, p0, Lcom/vkcoffee/android/utils/ActivityLocal;->values:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public put(Landroid/app/Activity;Ljava/lang/Object;)V
    .locals 2
    .param p1, "act"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 66
    .local p0, "this":Lcom/vkcoffee/android/utils/ActivityLocal;, "Lcom/vkcoffee/android/utils/ActivityLocal<TT;>;"
    .local p2, "obj":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/vkcoffee/android/utils/ActivityLocal;->values:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 67
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->sharedApp:Landroid/app/Application;

    iget-object v1, p0, Lcom/vkcoffee/android/utils/ActivityLocal;->activityCallbacks:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/utils/ActivityLocal;->values:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    return-void
.end method

.method public remove(Landroid/app/Activity;)V
    .locals 2
    .param p1, "act"    # Landroid/app/Activity;

    .prologue
    .line 73
    .local p0, "this":Lcom/vkcoffee/android/utils/ActivityLocal;, "Lcom/vkcoffee/android/utils/ActivityLocal<TT;>;"
    iget-object v0, p0, Lcom/vkcoffee/android/utils/ActivityLocal;->values:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    iget-object v0, p0, Lcom/vkcoffee/android/utils/ActivityLocal;->values:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 75
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->sharedApp:Landroid/app/Application;

    iget-object v1, p0, Lcom/vkcoffee/android/utils/ActivityLocal;->activityCallbacks:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {v0, v1}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 77
    :cond_0
    return-void
.end method
