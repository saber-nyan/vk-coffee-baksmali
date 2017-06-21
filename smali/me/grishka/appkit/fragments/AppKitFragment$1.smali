.class Lme/grishka/appkit/fragments/AppKitFragment$1;
.super Ljava/lang/Object;
.source "AppKitFragment.java"

# interfaces
.implements Landroid/support/v7/widget/Toolbar$OnMenuItemClickListener;


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
    iput-object p1, p0, Lme/grishka/appkit/fragments/AppKitFragment$1;->this$0:Lme/grishka/appkit/fragments/AppKitFragment;

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 187
    iget-object v0, p0, Lme/grishka/appkit/fragments/AppKitFragment$1;->this$0:Lme/grishka/appkit/fragments/AppKitFragment;

    invoke-virtual {v0, p1}, Lme/grishka/appkit/fragments/AppKitFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method
