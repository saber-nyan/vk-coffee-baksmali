.class Lcom/facebook/share/internal/LikeDialog$WebFallbackHandler;
.super Lcom/facebook/internal/FacebookDialogBase$ModeHandler;
.source "LikeDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/internal/LikeDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WebFallbackHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/internal/FacebookDialogBase",
        "<",
        "Lcom/facebook/share/internal/LikeContent;",
        "Lcom/facebook/share/internal/LikeDialog$Result;",
        ">.ModeHandler;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/share/internal/LikeDialog;


# direct methods
.method private constructor <init>(Lcom/facebook/share/internal/LikeDialog;)V
    .locals 0

    .prologue
    .line 167
    iput-object p1, p0, Lcom/facebook/share/internal/LikeDialog$WebFallbackHandler;->this$0:Lcom/facebook/share/internal/LikeDialog;

    invoke-direct {p0, p1}, Lcom/facebook/internal/FacebookDialogBase$ModeHandler;-><init>(Lcom/facebook/internal/FacebookDialogBase;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/share/internal/LikeDialog;Lcom/facebook/share/internal/LikeDialog$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/facebook/share/internal/LikeDialog;
    .param p2, "x1"    # Lcom/facebook/share/internal/LikeDialog$1;

    .prologue
    .line 167
    invoke-direct {p0, p1}, Lcom/facebook/share/internal/LikeDialog$WebFallbackHandler;-><init>(Lcom/facebook/share/internal/LikeDialog;)V

    return-void
.end method


# virtual methods
.method public canShow(Lcom/facebook/share/internal/LikeContent;)Z
    .locals 1
    .param p1, "content"    # Lcom/facebook/share/internal/LikeContent;

    .prologue
    .line 170
    if-eqz p1, :cond_0

    invoke-static {}, Lcom/facebook/share/internal/LikeDialog;->canShowWebFallback()Z

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
    .line 167
    check-cast p1, Lcom/facebook/share/internal/LikeContent;

    invoke-virtual {p0, p1}, Lcom/facebook/share/internal/LikeDialog$WebFallbackHandler;->canShow(Lcom/facebook/share/internal/LikeContent;)Z

    move-result v0

    return v0
.end method

.method public createAppCall(Lcom/facebook/share/internal/LikeContent;)Lcom/facebook/internal/AppCall;
    .locals 3
    .param p1, "content"    # Lcom/facebook/share/internal/LikeContent;

    .prologue
    .line 175
    iget-object v1, p0, Lcom/facebook/share/internal/LikeDialog$WebFallbackHandler;->this$0:Lcom/facebook/share/internal/LikeDialog;

    invoke-virtual {v1}, Lcom/facebook/share/internal/LikeDialog;->createBaseAppCall()Lcom/facebook/internal/AppCall;

    move-result-object v0

    .line 179
    .local v0, "appCall":Lcom/facebook/internal/AppCall;
    invoke-static {p1}, Lcom/facebook/share/internal/LikeDialog;->access$200(Lcom/facebook/share/internal/LikeContent;)Landroid/os/Bundle;

    move-result-object v1

    .line 180
    invoke-static {}, Lcom/facebook/share/internal/LikeDialog;->access$300()Lcom/facebook/internal/DialogFeature;

    move-result-object v2

    .line 177
    invoke-static {v0, v1, v2}, Lcom/facebook/internal/DialogPresenter;->setupAppCallForWebFallbackDialog(Lcom/facebook/internal/AppCall;Landroid/os/Bundle;Lcom/facebook/internal/DialogFeature;)V

    .line 182
    return-object v0
.end method

.method public bridge synthetic createAppCall(Ljava/lang/Object;)Lcom/facebook/internal/AppCall;
    .locals 1

    .prologue
    .line 167
    check-cast p1, Lcom/facebook/share/internal/LikeContent;

    invoke-virtual {p0, p1}, Lcom/facebook/share/internal/LikeDialog$WebFallbackHandler;->createAppCall(Lcom/facebook/share/internal/LikeContent;)Lcom/facebook/internal/AppCall;

    move-result-object v0

    return-object v0
.end method
