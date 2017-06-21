.class Lme/grishka/appkit/fragments/AppKitFragment$2;
.super Ljava/lang/Object;
.source "AppKitFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/grishka/appkit/fragments/AppKitFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lme/grishka/appkit/fragments/AppKitFragment;


# direct methods
.method constructor <init>(Lme/grishka/appkit/fragments/AppKitFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lme/grishka/appkit/fragments/AppKitFragment$2;->this$0:Lme/grishka/appkit/fragments/AppKitFragment;

    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 198
    iget-object v0, p0, Lme/grishka/appkit/fragments/AppKitFragment$2;->this$0:Lme/grishka/appkit/fragments/AppKitFragment;

    invoke-virtual {v0}, Lme/grishka/appkit/fragments/AppKitFragment;->onToolbarNavigationClick()V

    .line 199
    return-void
.end method
