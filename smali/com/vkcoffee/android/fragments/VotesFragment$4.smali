.class Lcom/vkcoffee/android/fragments/VotesFragment$4;
.super Ljava/lang/Object;
.source "VotesFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/VotesFragment;->onGPSError()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/VotesFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/VotesFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/fragments/VotesFragment;

    .prologue
    .line 171
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/VotesFragment$4;->this$0:Lcom/vkcoffee/android/fragments/VotesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 174
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/VotesFragment$4;->this$0:Lcom/vkcoffee/android/fragments/VotesFragment;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/VotesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 175
    return-void
.end method
