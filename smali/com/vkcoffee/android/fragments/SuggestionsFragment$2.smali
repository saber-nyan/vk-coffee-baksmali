.class Lcom/vkcoffee/android/fragments/SuggestionsFragment$2;
.super Ljava/lang/Object;
.source "SuggestionsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/SuggestionsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/SuggestionsFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/SuggestionsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/fragments/SuggestionsFragment;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/SuggestionsFragment$2;->this$0:Lcom/vkcoffee/android/fragments/SuggestionsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/SuggestionsFragment$2;->this$0:Lcom/vkcoffee/android/fragments/SuggestionsFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/SuggestionsFragment;->access$000(Lcom/vkcoffee/android/fragments/SuggestionsFragment;)Lcom/vkcoffee/android/ui/ErrorView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/ErrorView;->setVisibility(I)V

    .line 99
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/SuggestionsFragment$2;->this$0:Lcom/vkcoffee/android/fragments/SuggestionsFragment;

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/SuggestionsFragment;->progress:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 100
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/SuggestionsFragment$2;->this$0:Lcom/vkcoffee/android/fragments/SuggestionsFragment;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/SuggestionsFragment;->loadData()V

    .line 101
    return-void
.end method
