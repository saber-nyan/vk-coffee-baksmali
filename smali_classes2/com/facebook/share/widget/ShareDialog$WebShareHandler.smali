.class Lcom/facebook/share/widget/ShareDialog$WebShareHandler;
.super Lcom/facebook/internal/FacebookDialogBase$ModeHandler;
.source "ShareDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/widget/ShareDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WebShareHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/internal/FacebookDialogBase",
        "<",
        "Lcom/facebook/share/model/ShareContent;",
        "Lcom/facebook/share/Sharer$Result;",
        ">.ModeHandler;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/share/widget/ShareDialog;


# direct methods
.method private constructor <init>(Lcom/facebook/share/widget/ShareDialog;)V
    .locals 0

    .prologue
    .line 276
    iput-object p1, p0, Lcom/facebook/share/widget/ShareDialog$WebShareHandler;->this$0:Lcom/facebook/share/widget/ShareDialog;

    invoke-direct {p0, p1}, Lcom/facebook/internal/FacebookDialogBase$ModeHandler;-><init>(Lcom/facebook/internal/FacebookDialogBase;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/share/widget/ShareDialog;Lcom/facebook/share/widget/ShareDialog$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/facebook/share/widget/ShareDialog;
    .param p2, "x1"    # Lcom/facebook/share/widget/ShareDialog$1;

    .prologue
    .line 276
    invoke-direct {p0, p1}, Lcom/facebook/share/widget/ShareDialog$WebShareHandler;-><init>(Lcom/facebook/share/widget/ShareDialog;)V

    return-void
.end method

.method private getActionName(Lcom/facebook/share/model/ShareContent;)Ljava/lang/String;
    .locals 1
    .param p1, "shareContent"    # Lcom/facebook/share/model/ShareContent;

    .prologue
    .line 311
    instance-of v0, p1, Lcom/facebook/share/model/ShareLinkContent;

    if-eqz v0, :cond_0

    .line 312
    const-string/jumbo v0, "share"

    .line 317
    :goto_0
    return-object v0

    .line 313
    :cond_0
    instance-of v0, p1, Lcom/facebook/share/model/ShareOpenGraphContent;

    if-eqz v0, :cond_1

    .line 314
    const-string/jumbo v0, "share_open_graph"

    goto :goto_0

    .line 317
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public canShow(Lcom/facebook/share/model/ShareContent;)Z
    .locals 1
    .param p1, "content"    # Lcom/facebook/share/model/ShareContent;

    .prologue
    .line 284
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/share/widget/ShareDialog;->access$700(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic canShow(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 276
    check-cast p1, Lcom/facebook/share/model/ShareContent;

    invoke-virtual {p0, p1}, Lcom/facebook/share/widget/ShareDialog$WebShareHandler;->canShow(Lcom/facebook/share/model/ShareContent;)Z

    move-result v0

    return v0
.end method

.method public createAppCall(Lcom/facebook/share/model/ShareContent;)Lcom/facebook/internal/AppCall;
    .locals 5
    .param p1, "content"    # Lcom/facebook/share/model/ShareContent;

    .prologue
    .line 289
    iget-object v2, p0, Lcom/facebook/share/widget/ShareDialog$WebShareHandler;->this$0:Lcom/facebook/share/widget/ShareDialog;

    iget-object v3, p0, Lcom/facebook/share/widget/ShareDialog$WebShareHandler;->this$0:Lcom/facebook/share/widget/ShareDialog;

    invoke-static {v3}, Lcom/facebook/share/widget/ShareDialog;->access$800(Lcom/facebook/share/widget/ShareDialog;)Landroid/app/Activity;

    move-result-object v3

    sget-object v4, Lcom/facebook/share/widget/ShareDialog$Mode;->WEB:Lcom/facebook/share/widget/ShareDialog$Mode;

    invoke-static {v2, v3, p1, v4}, Lcom/facebook/share/widget/ShareDialog;->access$500(Lcom/facebook/share/widget/ShareDialog;Landroid/content/Context;Lcom/facebook/share/model/ShareContent;Lcom/facebook/share/widget/ShareDialog$Mode;)V

    .line 291
    iget-object v2, p0, Lcom/facebook/share/widget/ShareDialog$WebShareHandler;->this$0:Lcom/facebook/share/widget/ShareDialog;

    invoke-virtual {v2}, Lcom/facebook/share/widget/ShareDialog;->createBaseAppCall()Lcom/facebook/internal/AppCall;

    move-result-object v0

    .line 293
    .local v0, "appCall":Lcom/facebook/internal/AppCall;
    invoke-static {p1}, Lcom/facebook/share/internal/ShareContentValidation;->validateForWebShare(Lcom/facebook/share/model/ShareContent;)V

    .line 296
    instance-of v2, p1, Lcom/facebook/share/model/ShareLinkContent;

    if-eqz v2, :cond_0

    move-object v2, p1

    .line 297
    check-cast v2, Lcom/facebook/share/model/ShareLinkContent;

    invoke-static {v2}, Lcom/facebook/share/internal/WebDialogParameters;->create(Lcom/facebook/share/model/ShareLinkContent;)Landroid/os/Bundle;

    move-result-object v1

    .line 304
    .local v1, "params":Landroid/os/Bundle;
    :goto_0
    invoke-direct {p0, p1}, Lcom/facebook/share/widget/ShareDialog$WebShareHandler;->getActionName(Lcom/facebook/share/model/ShareContent;)Ljava/lang/String;

    move-result-object v2

    .line 302
    invoke-static {v0, v2, v1}, Lcom/facebook/internal/DialogPresenter;->setupAppCallForWebDialog(Lcom/facebook/internal/AppCall;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 307
    return-object v0

    .end local v1    # "params":Landroid/os/Bundle;
    :cond_0
    move-object v2, p1

    .line 299
    check-cast v2, Lcom/facebook/share/model/ShareOpenGraphContent;

    invoke-static {v2}, Lcom/facebook/share/internal/WebDialogParameters;->create(Lcom/facebook/share/model/ShareOpenGraphContent;)Landroid/os/Bundle;

    move-result-object v1

    .restart local v1    # "params":Landroid/os/Bundle;
    goto :goto_0
.end method

.method public bridge synthetic createAppCall(Ljava/lang/Object;)Lcom/facebook/internal/AppCall;
    .locals 1

    .prologue
    .line 276
    check-cast p1, Lcom/facebook/share/model/ShareContent;

    invoke-virtual {p0, p1}, Lcom/facebook/share/widget/ShareDialog$WebShareHandler;->createAppCall(Lcom/facebook/share/model/ShareContent;)Lcom/facebook/internal/AppCall;

    move-result-object v0

    return-object v0
.end method

.method public getMode()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 279
    sget-object v0, Lcom/facebook/share/widget/ShareDialog$Mode;->WEB:Lcom/facebook/share/widget/ShareDialog$Mode;

    return-object v0
.end method
