.class public Lcom/facebook/internal/WebDialog$Builder;
.super Ljava/lang/Object;
.source "WebDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/internal/WebDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private accessToken:Lcom/facebook/AccessToken;

.field private action:Ljava/lang/String;

.field private applicationId:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private listener:Lcom/facebook/internal/WebDialog$OnCompleteListener;

.field private parameters:Landroid/os/Bundle;

.field private theme:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "parameters"    # Landroid/os/Bundle;

    .prologue
    .line 550
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 536
    const v1, 0x1030010

    iput v1, p0, Lcom/facebook/internal/WebDialog$Builder;->theme:I

    .line 551
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/internal/WebDialog$Builder;->accessToken:Lcom/facebook/AccessToken;

    .line 552
    iget-object v1, p0, Lcom/facebook/internal/WebDialog$Builder;->accessToken:Lcom/facebook/AccessToken;

    if-nez v1, :cond_0

    .line 553
    invoke-static {p1}, Lcom/facebook/internal/Utility;->getMetadataApplicationId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 554
    .local v0, "applicationId":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 555
    iput-object v0, p0, Lcom/facebook/internal/WebDialog$Builder;->applicationId:Ljava/lang/String;

    .line 562
    .end local v0    # "applicationId":Ljava/lang/String;
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/internal/WebDialog$Builder;->finishInit(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 563
    return-void

    .line 557
    .restart local v0    # "applicationId":Ljava/lang/String;
    :cond_1
    new-instance v1, Lcom/facebook/FacebookException;

    const-string/jumbo v2, "Attempted to create a builder without a valid access token or a valid default Application ID."

    invoke-direct {v1, v2}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "applicationId"    # Ljava/lang/String;
    .param p3, "action"    # Ljava/lang/String;
    .param p4, "parameters"    # Landroid/os/Bundle;

    .prologue
    .line 574
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 536
    const v0, 0x1030010

    iput v0, p0, Lcom/facebook/internal/WebDialog$Builder;->theme:I

    .line 575
    if-nez p2, :cond_0

    .line 576
    invoke-static {p1}, Lcom/facebook/internal/Utility;->getMetadataApplicationId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    .line 578
    :cond_0
    const-string/jumbo v0, "applicationId"

    invoke-static {p2, v0}, Lcom/facebook/internal/Validate;->notNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    iput-object p2, p0, Lcom/facebook/internal/WebDialog$Builder;->applicationId:Ljava/lang/String;

    .line 581
    invoke-direct {p0, p1, p3, p4}, Lcom/facebook/internal/WebDialog$Builder;->finishInit(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 582
    return-void
.end method

.method private finishInit(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "parameters"    # Landroid/os/Bundle;

    .prologue
    .line 648
    iput-object p1, p0, Lcom/facebook/internal/WebDialog$Builder;->context:Landroid/content/Context;

    .line 649
    iput-object p2, p0, Lcom/facebook/internal/WebDialog$Builder;->action:Ljava/lang/String;

    .line 650
    if-eqz p3, :cond_0

    .line 651
    iput-object p3, p0, Lcom/facebook/internal/WebDialog$Builder;->parameters:Landroid/os/Bundle;

    .line 655
    :goto_0
    return-void

    .line 653
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/facebook/internal/WebDialog$Builder;->parameters:Landroid/os/Bundle;

    goto :goto_0
.end method


# virtual methods
.method public build()Lcom/facebook/internal/WebDialog;
    .locals 6

    .prologue
    .line 613
    iget-object v0, p0, Lcom/facebook/internal/WebDialog$Builder;->accessToken:Lcom/facebook/AccessToken;

    if-eqz v0, :cond_0

    .line 614
    iget-object v0, p0, Lcom/facebook/internal/WebDialog$Builder;->parameters:Landroid/os/Bundle;

    const-string/jumbo v1, "app_id"

    iget-object v2, p0, Lcom/facebook/internal/WebDialog$Builder;->accessToken:Lcom/facebook/AccessToken;

    .line 616
    invoke-virtual {v2}, Lcom/facebook/AccessToken;->getApplicationId()Ljava/lang/String;

    move-result-object v2

    .line 614
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 617
    iget-object v0, p0, Lcom/facebook/internal/WebDialog$Builder;->parameters:Landroid/os/Bundle;

    const-string/jumbo v1, "access_token"

    iget-object v2, p0, Lcom/facebook/internal/WebDialog$Builder;->accessToken:Lcom/facebook/AccessToken;

    .line 619
    invoke-virtual {v2}, Lcom/facebook/AccessToken;->getToken()Ljava/lang/String;

    move-result-object v2

    .line 617
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    :goto_0
    new-instance v0, Lcom/facebook/internal/WebDialog;

    iget-object v1, p0, Lcom/facebook/internal/WebDialog$Builder;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/facebook/internal/WebDialog$Builder;->action:Ljava/lang/String;

    iget-object v3, p0, Lcom/facebook/internal/WebDialog$Builder;->parameters:Landroid/os/Bundle;

    iget v4, p0, Lcom/facebook/internal/WebDialog$Builder;->theme:I

    iget-object v5, p0, Lcom/facebook/internal/WebDialog$Builder;->listener:Lcom/facebook/internal/WebDialog$OnCompleteListener;

    invoke-direct/range {v0 .. v5}, Lcom/facebook/internal/WebDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ILcom/facebook/internal/WebDialog$OnCompleteListener;)V

    return-object v0

    .line 621
    :cond_0
    iget-object v0, p0, Lcom/facebook/internal/WebDialog$Builder;->parameters:Landroid/os/Bundle;

    const-string/jumbo v1, "app_id"

    iget-object v2, p0, Lcom/facebook/internal/WebDialog$Builder;->applicationId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getApplicationId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 628
    iget-object v0, p0, Lcom/facebook/internal/WebDialog$Builder;->applicationId:Ljava/lang/String;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 632
    iget-object v0, p0, Lcom/facebook/internal/WebDialog$Builder;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getListener()Lcom/facebook/internal/WebDialog$OnCompleteListener;
    .locals 1

    .prologue
    .line 644
    iget-object v0, p0, Lcom/facebook/internal/WebDialog$Builder;->listener:Lcom/facebook/internal/WebDialog$OnCompleteListener;

    return-object v0
.end method

.method public getParameters()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 640
    iget-object v0, p0, Lcom/facebook/internal/WebDialog$Builder;->parameters:Landroid/os/Bundle;

    return-object v0
.end method

.method public getTheme()I
    .locals 1

    .prologue
    .line 636
    iget v0, p0, Lcom/facebook/internal/WebDialog$Builder;->theme:I

    return v0
.end method

.method public setOnCompleteListener(Lcom/facebook/internal/WebDialog$OnCompleteListener;)Lcom/facebook/internal/WebDialog$Builder;
    .locals 0
    .param p1, "listener"    # Lcom/facebook/internal/WebDialog$OnCompleteListener;

    .prologue
    .line 602
    iput-object p1, p0, Lcom/facebook/internal/WebDialog$Builder;->listener:Lcom/facebook/internal/WebDialog$OnCompleteListener;

    .line 603
    return-object p0
.end method

.method public setTheme(I)Lcom/facebook/internal/WebDialog$Builder;
    .locals 0
    .param p1, "theme"    # I

    .prologue
    .line 591
    iput p1, p0, Lcom/facebook/internal/WebDialog$Builder;->theme:I

    .line 592
    return-object p0
.end method
