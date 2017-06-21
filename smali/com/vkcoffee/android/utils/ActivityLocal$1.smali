.class Lcom/vkcoffee/android/utils/ActivityLocal$1;
.super Ljava/lang/Object;
.source "ActivityLocal.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/utils/ActivityLocal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/utils/ActivityLocal;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/utils/ActivityLocal;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/utils/ActivityLocal;

    .prologue
    .line 17
    .local p0, "this":Lcom/vkcoffee/android/utils/ActivityLocal$1;, "Lcom/vkcoffee/android/utils/ActivityLocal$1;"
    iput-object p1, p0, Lcom/vkcoffee/android/utils/ActivityLocal$1;->this$0:Lcom/vkcoffee/android/utils/ActivityLocal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 21
    .local p0, "this":Lcom/vkcoffee/android/utils/ActivityLocal$1;, "Lcom/vkcoffee/android/utils/ActivityLocal$1;"
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 50
    .local p0, "this":Lcom/vkcoffee/android/utils/ActivityLocal$1;, "Lcom/vkcoffee/android/utils/ActivityLocal$1;"
    iget-object v0, p0, Lcom/vkcoffee/android/utils/ActivityLocal$1;->this$0:Lcom/vkcoffee/android/utils/ActivityLocal;

    invoke-static {v0}, Lcom/vkcoffee/android/utils/ActivityLocal;->access$000(Lcom/vkcoffee/android/utils/ActivityLocal;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    iget-object v0, p0, Lcom/vkcoffee/android/utils/ActivityLocal$1;->this$0:Lcom/vkcoffee/android/utils/ActivityLocal;

    invoke-static {v0}, Lcom/vkcoffee/android/utils/ActivityLocal;->access$000(Lcom/vkcoffee/android/utils/ActivityLocal;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 52
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->sharedApp:Landroid/app/Application;

    iget-object v1, p0, Lcom/vkcoffee/android/utils/ActivityLocal$1;->this$0:Lcom/vkcoffee/android/utils/ActivityLocal;

    invoke-static {v1}, Lcom/vkcoffee/android/utils/ActivityLocal;->access$100(Lcom/vkcoffee/android/utils/ActivityLocal;)Landroid/app/Application$ActivityLifecycleCallbacks;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 54
    :cond_0
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 36
    .local p0, "this":Lcom/vkcoffee/android/utils/ActivityLocal$1;, "Lcom/vkcoffee/android/utils/ActivityLocal$1;"
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 31
    .local p0, "this":Lcom/vkcoffee/android/utils/ActivityLocal$1;, "Lcom/vkcoffee/android/utils/ActivityLocal$1;"
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 46
    .local p0, "this":Lcom/vkcoffee/android/utils/ActivityLocal$1;, "Lcom/vkcoffee/android/utils/ActivityLocal$1;"
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 26
    .local p0, "this":Lcom/vkcoffee/android/utils/ActivityLocal$1;, "Lcom/vkcoffee/android/utils/ActivityLocal$1;"
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 41
    .local p0, "this":Lcom/vkcoffee/android/utils/ActivityLocal$1;, "Lcom/vkcoffee/android/utils/ActivityLocal$1;"
    return-void
.end method
