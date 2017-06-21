.class Lme/grishka/appkit/fragments/LoaderFragment$2;
.super Ljava/lang/Object;
.source "LoaderFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/grishka/appkit/fragments/LoaderFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lme/grishka/appkit/fragments/LoaderFragment;


# direct methods
.method constructor <init>(Lme/grishka/appkit/fragments/LoaderFragment;)V
    .locals 0
    .param p1, "this$0"    # Lme/grishka/appkit/fragments/LoaderFragment;

    .prologue
    .line 89
    iput-object p1, p0, Lme/grishka/appkit/fragments/LoaderFragment$2;->this$0:Lme/grishka/appkit/fragments/LoaderFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 92
    iget-object v0, p0, Lme/grishka/appkit/fragments/LoaderFragment$2;->this$0:Lme/grishka/appkit/fragments/LoaderFragment;

    invoke-virtual {v0}, Lme/grishka/appkit/fragments/LoaderFragment;->onErrorRetryClick()V

    .line 93
    return-void
.end method
