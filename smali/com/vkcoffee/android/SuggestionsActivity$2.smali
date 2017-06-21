.class Lcom/vkcoffee/android/SuggestionsActivity$2;
.super Ljava/lang/Object;
.source "SuggestionsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/SuggestionsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/SuggestionsActivity;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/SuggestionsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/SuggestionsActivity;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/vkcoffee/android/SuggestionsActivity$2;->this$0:Lcom/vkcoffee/android/SuggestionsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/vkcoffee/android/SuggestionsActivity$2;->this$0:Lcom/vkcoffee/android/SuggestionsActivity;

    invoke-static {v0}, Lcom/vkcoffee/android/SuggestionsActivity;->access$000(Lcom/vkcoffee/android/SuggestionsActivity;)I

    move-result v0

    if-nez v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/vkcoffee/android/SuggestionsActivity$2;->this$0:Lcom/vkcoffee/android/SuggestionsActivity;

    invoke-static {v0}, Lcom/vkcoffee/android/SuggestionsActivity;->access$100(Lcom/vkcoffee/android/SuggestionsActivity;)V

    .line 54
    iget-object v0, p0, Lcom/vkcoffee/android/SuggestionsActivity$2;->this$0:Lcom/vkcoffee/android/SuggestionsActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/vkcoffee/android/SuggestionsActivity;->access$200(Lcom/vkcoffee/android/SuggestionsActivity;I)V

    .line 61
    :goto_0
    return-void

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/SuggestionsActivity$2;->this$0:Lcom/vkcoffee/android/SuggestionsActivity;

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.vkcoffee.android.RELOAD_FEED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "com.vkcoffee.android.permission.ACCESS_DATA"

    invoke-virtual {v0, v1, v2}, Lcom/vkcoffee/android/SuggestionsActivity;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lcom/vkcoffee/android/SuggestionsActivity$2;->this$0:Lcom/vkcoffee/android/SuggestionsActivity;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/vkcoffee/android/SuggestionsActivity;->access$200(Lcom/vkcoffee/android/SuggestionsActivity;I)V

    .line 58
    iget-object v0, p0, Lcom/vkcoffee/android/SuggestionsActivity$2;->this$0:Lcom/vkcoffee/android/SuggestionsActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/SuggestionsActivity;->setResult(I)V

    .line 59
    iget-object v0, p0, Lcom/vkcoffee/android/SuggestionsActivity$2;->this$0:Lcom/vkcoffee/android/SuggestionsActivity;

    invoke-virtual {v0}, Lcom/vkcoffee/android/SuggestionsActivity;->finish()V

    goto :goto_0
.end method
