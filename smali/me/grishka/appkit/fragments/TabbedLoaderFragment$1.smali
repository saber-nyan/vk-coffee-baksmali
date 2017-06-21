.class Lme/grishka/appkit/fragments/TabbedLoaderFragment$1;
.super Lme/grishka/appkit/fragments/TabbedScreen$Delegate;
.source "TabbedLoaderFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/grishka/appkit/fragments/TabbedLoaderFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lme/grishka/appkit/fragments/TabbedLoaderFragment;


# direct methods
.method constructor <init>(Lme/grishka/appkit/fragments/TabbedLoaderFragment;Lme/grishka/appkit/fragments/ContainerFragment;)V
    .locals 0
    .param p1, "this$0"    # Lme/grishka/appkit/fragments/TabbedLoaderFragment;
    .param p2, "mHost"    # Lme/grishka/appkit/fragments/ContainerFragment;

    .prologue
    .line 23
    iput-object p1, p0, Lme/grishka/appkit/fragments/TabbedLoaderFragment$1;->this$0:Lme/grishka/appkit/fragments/TabbedLoaderFragment;

    invoke-direct {p0, p2}, Lme/grishka/appkit/fragments/TabbedScreen$Delegate;-><init>(Lme/grishka/appkit/fragments/ContainerFragment;)V

    return-void
.end method


# virtual methods
.method public invalidateOptionsMenu()V
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lme/grishka/appkit/fragments/TabbedLoaderFragment$1;->this$0:Lme/grishka/appkit/fragments/TabbedLoaderFragment;

    invoke-virtual {v0}, Lme/grishka/appkit/fragments/TabbedLoaderFragment;->invalidateOptionsMenu()V

    .line 32
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1
    .param p1, "pos"    # I

    .prologue
    .line 26
    iget-object v0, p0, Lme/grishka/appkit/fragments/TabbedLoaderFragment$1;->this$0:Lme/grishka/appkit/fragments/TabbedLoaderFragment;

    invoke-virtual {v0, p1}, Lme/grishka/appkit/fragments/TabbedLoaderFragment;->onPageSelected(I)V

    .line 27
    return-void
.end method
