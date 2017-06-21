.class Lme/grishka/appkit/fragments/BaseListFragment$2;
.super Ljava/lang/Object;
.source "BaseListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/grishka/appkit/fragments/BaseListFragment;->onCreateContentView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lme/grishka/appkit/fragments/BaseListFragment;


# direct methods
.method constructor <init>(Lme/grishka/appkit/fragments/BaseListFragment;)V
    .locals 0
    .param p1, "this$0"    # Lme/grishka/appkit/fragments/BaseListFragment;

    .prologue
    .line 100
    .local p0, "this":Lme/grishka/appkit/fragments/BaseListFragment$2;, "Lme/grishka/appkit/fragments/BaseListFragment$2;"
    iput-object p1, p0, Lme/grishka/appkit/fragments/BaseListFragment$2;->this$0:Lme/grishka/appkit/fragments/BaseListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 103
    .local p0, "this":Lme/grishka/appkit/fragments/BaseListFragment$2;, "Lme/grishka/appkit/fragments/BaseListFragment$2;"
    iget-object v0, p0, Lme/grishka/appkit/fragments/BaseListFragment$2;->this$0:Lme/grishka/appkit/fragments/BaseListFragment;

    invoke-virtual {v0}, Lme/grishka/appkit/fragments/BaseListFragment;->onErrorRetryClick()V

    .line 104
    return-void
.end method
