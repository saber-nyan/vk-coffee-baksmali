.class Lcom/vkcoffee/android/ui/SearchViewWrapper$3;
.super Ljava/lang/Object;
.source "SearchViewWrapper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/ui/SearchViewWrapper;-><init>(Landroid/app/Activity;Lcom/vkcoffee/android/ui/SearchViewWrapper$SearchListener;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/ui/SearchViewWrapper;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/ui/SearchViewWrapper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/ui/SearchViewWrapper;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/vkcoffee/android/ui/SearchViewWrapper$3;->this$0:Lcom/vkcoffee/android/ui/SearchViewWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 111
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 112
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "android.speech.extra.LANGUAGE_MODEL"

    const-string/jumbo v2, "free_form"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 113
    const-string/jumbo v1, "android.speech.extra.MAX_RESULTS"

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 114
    iget-object v1, p0, Lcom/vkcoffee/android/ui/SearchViewWrapper$3;->this$0:Lcom/vkcoffee/android/ui/SearchViewWrapper;

    invoke-static {v1}, Lcom/vkcoffee/android/ui/SearchViewWrapper;->access$000(Lcom/vkcoffee/android/ui/SearchViewWrapper;)Landroid/app/Activity;

    move-result-object v1

    const/16 v2, 0x4e20

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 115
    return-void
.end method
