.class Lme/grishka/appkit/fragments/BaseRecyclerFragment$3;
.super Ljava/lang/Object;
.source "BaseRecyclerFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/grishka/appkit/fragments/BaseRecyclerFragment;->onCreateContentView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lme/grishka/appkit/fragments/BaseRecyclerFragment;


# direct methods
.method constructor <init>(Lme/grishka/appkit/fragments/BaseRecyclerFragment;)V
    .locals 0
    .param p1, "this$0"    # Lme/grishka/appkit/fragments/BaseRecyclerFragment;

    .prologue
    .line 142
    .local p0, "this":Lme/grishka/appkit/fragments/BaseRecyclerFragment$3;, "Lme/grishka/appkit/fragments/BaseRecyclerFragment$3;"
    iput-object p1, p0, Lme/grishka/appkit/fragments/BaseRecyclerFragment$3;->this$0:Lme/grishka/appkit/fragments/BaseRecyclerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 145
    .local p0, "this":Lme/grishka/appkit/fragments/BaseRecyclerFragment$3;, "Lme/grishka/appkit/fragments/BaseRecyclerFragment$3;"
    iget-object v0, p0, Lme/grishka/appkit/fragments/BaseRecyclerFragment$3;->this$0:Lme/grishka/appkit/fragments/BaseRecyclerFragment;

    invoke-virtual {v0}, Lme/grishka/appkit/fragments/BaseRecyclerFragment;->onErrorRetryClick()V

    .line 146
    return-void
.end method
