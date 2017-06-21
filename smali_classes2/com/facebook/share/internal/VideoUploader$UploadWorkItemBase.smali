.class abstract Lcom/facebook/share/internal/VideoUploader$UploadWorkItemBase;
.super Ljava/lang/Object;
.source "VideoUploader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/internal/VideoUploader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "UploadWorkItemBase"
.end annotation


# instance fields
.field protected completedRetries:I

.field protected uploadContext:Lcom/facebook/share/internal/VideoUploader$UploadContext;


# direct methods
.method protected constructor <init>(Lcom/facebook/share/internal/VideoUploader$UploadContext;I)V
    .locals 0
    .param p1, "uploadContext"    # Lcom/facebook/share/internal/VideoUploader$UploadContext;
    .param p2, "completedRetries"    # I

    .prologue
    .line 532
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 533
    iput-object p1, p0, Lcom/facebook/share/internal/VideoUploader$UploadWorkItemBase;->uploadContext:Lcom/facebook/share/internal/VideoUploader$UploadContext;

    .line 534
    iput p2, p0, Lcom/facebook/share/internal/VideoUploader$UploadWorkItemBase;->completedRetries:I

    .line 535
    return-void
.end method

.method private attemptRetry(I)Z
    .locals 6
    .param p1, "errorCode"    # I

    .prologue
    .line 584
    iget v1, p0, Lcom/facebook/share/internal/VideoUploader$UploadWorkItemBase;->completedRetries:I

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    .line 585
    invoke-virtual {p0}, Lcom/facebook/share/internal/VideoUploader$UploadWorkItemBase;->getTransientErrorCodes()Ljava/util/Set;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 586
    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    iget v1, p0, Lcom/facebook/share/internal/VideoUploader$UploadWorkItemBase;->completedRetries:I

    int-to-double v4, v1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-int v1, v2

    mul-int/lit16 v0, v1, 0x1388

    .line 591
    .local v0, "delay":I
    invoke-static {}, Lcom/facebook/share/internal/VideoUploader;->access$800()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/facebook/share/internal/VideoUploader$UploadWorkItemBase$1;

    invoke-direct {v2, p0}, Lcom/facebook/share/internal/VideoUploader$UploadWorkItemBase$1;-><init>(Lcom/facebook/share/internal/VideoUploader$UploadWorkItemBase;)V

    int-to-long v4, v0

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 598
    const/4 v1, 0x1

    .line 600
    .end local v0    # "delay":I
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected endUploadWithFailure(Lcom/facebook/FacebookException;)V
    .locals 1
    .param p1, "error"    # Lcom/facebook/FacebookException;

    .prologue
    .line 605
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/facebook/share/internal/VideoUploader$UploadWorkItemBase;->issueResponseOnMainThread(Lcom/facebook/FacebookException;Ljava/lang/String;)V

    .line 606
    return-void
.end method

.method protected abstract enqueueRetry(I)V
.end method

.method protected executeGraphRequestSynchronously(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "parameters"    # Landroid/os/Bundle;

    .prologue
    .line 554
    new-instance v0, Lcom/facebook/GraphRequest;

    iget-object v1, p0, Lcom/facebook/share/internal/VideoUploader$UploadWorkItemBase;->uploadContext:Lcom/facebook/share/internal/VideoUploader$UploadContext;

    iget-object v1, v1, Lcom/facebook/share/internal/VideoUploader$UploadContext;->accessToken:Lcom/facebook/AccessToken;

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string/jumbo v3, "%s/videos"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v10, p0, Lcom/facebook/share/internal/VideoUploader$UploadWorkItemBase;->uploadContext:Lcom/facebook/share/internal/VideoUploader$UploadContext;

    iget-object v10, v10, Lcom/facebook/share/internal/VideoUploader$UploadContext;->graphNode:Ljava/lang/String;

    aput-object v10, v4, v5

    .line 556
    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/facebook/HttpMethod;->POST:Lcom/facebook/HttpMethod;

    const/4 v5, 0x0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/GraphRequest$Callback;)V

    .line 560
    .local v0, "request":Lcom/facebook/GraphRequest;
    invoke-virtual {v0}, Lcom/facebook/GraphRequest;->executeAndWait()Lcom/facebook/GraphResponse;

    move-result-object v8

    .line 562
    .local v8, "response":Lcom/facebook/GraphResponse;
    if-eqz v8, :cond_3

    .line 563
    invoke-virtual {v8}, Lcom/facebook/GraphResponse;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v7

    .line 564
    .local v7, "error":Lcom/facebook/FacebookRequestError;
    invoke-virtual {v8}, Lcom/facebook/GraphResponse;->getJSONObject()Lorg/json/JSONObject;

    move-result-object v9

    .line 565
    .local v9, "responseJSON":Lorg/json/JSONObject;
    if-eqz v7, :cond_1

    .line 566
    invoke-virtual {v7}, Lcom/facebook/FacebookRequestError;->getSubErrorCode()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/facebook/share/internal/VideoUploader$UploadWorkItemBase;->attemptRetry(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 567
    new-instance v1, Lcom/facebook/FacebookGraphResponseException;

    const-string/jumbo v2, "Video upload failed"

    invoke-direct {v1, v8, v2}, Lcom/facebook/FacebookGraphResponseException;-><init>(Lcom/facebook/GraphResponse;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/facebook/share/internal/VideoUploader$UploadWorkItemBase;->handleError(Lcom/facebook/FacebookException;)V

    .line 581
    .end local v7    # "error":Lcom/facebook/FacebookRequestError;
    .end local v9    # "responseJSON":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return-void

    .line 569
    .restart local v7    # "error":Lcom/facebook/FacebookRequestError;
    .restart local v9    # "responseJSON":Lorg/json/JSONObject;
    :cond_1
    if-eqz v9, :cond_2

    .line 571
    :try_start_0
    invoke-virtual {p0, v9}, Lcom/facebook/share/internal/VideoUploader$UploadWorkItemBase;->handleSuccess(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 572
    :catch_0
    move-exception v6

    .line 573
    .local v6, "e":Lorg/json/JSONException;
    new-instance v1, Lcom/facebook/FacebookException;

    const-string/jumbo v2, "Unexpected error in server response"

    invoke-direct {v1, v2, v6}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v1}, Lcom/facebook/share/internal/VideoUploader$UploadWorkItemBase;->endUploadWithFailure(Lcom/facebook/FacebookException;)V

    goto :goto_0

    .line 576
    .end local v6    # "e":Lorg/json/JSONException;
    :cond_2
    new-instance v1, Lcom/facebook/FacebookException;

    const-string/jumbo v2, "Unexpected error in server response"

    invoke-direct {v1, v2}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/facebook/share/internal/VideoUploader$UploadWorkItemBase;->handleError(Lcom/facebook/FacebookException;)V

    goto :goto_0

    .line 579
    .end local v7    # "error":Lcom/facebook/FacebookRequestError;
    .end local v9    # "responseJSON":Lorg/json/JSONObject;
    :cond_3
    new-instance v1, Lcom/facebook/FacebookException;

    const-string/jumbo v2, "Unexpected error in server response"

    invoke-direct {v1, v2}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/facebook/share/internal/VideoUploader$UploadWorkItemBase;->handleError(Lcom/facebook/FacebookException;)V

    goto :goto_0
.end method

.method protected abstract getParameters()Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected abstract getTransientErrorCodes()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method protected abstract handleError(Lcom/facebook/FacebookException;)V
.end method

.method protected abstract handleSuccess(Lorg/json/JSONObject;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation
.end method

.method protected issueResponseOnMainThread(Lcom/facebook/FacebookException;Ljava/lang/String;)V
    .locals 2
    .param p1, "error"    # Lcom/facebook/FacebookException;
    .param p2, "videoId"    # Ljava/lang/String;

    .prologue
    .line 611
    invoke-static {}, Lcom/facebook/share/internal/VideoUploader;->access$800()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/facebook/share/internal/VideoUploader$UploadWorkItemBase$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/facebook/share/internal/VideoUploader$UploadWorkItemBase$2;-><init>(Lcom/facebook/share/internal/VideoUploader$UploadWorkItemBase;Lcom/facebook/FacebookException;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 617
    return-void
.end method

.method public run()V
    .locals 4

    .prologue
    .line 539
    iget-object v2, p0, Lcom/facebook/share/internal/VideoUploader$UploadWorkItemBase;->uploadContext:Lcom/facebook/share/internal/VideoUploader$UploadContext;

    iget-boolean v2, v2, Lcom/facebook/share/internal/VideoUploader$UploadContext;->isCanceled:Z

    if-nez v2, :cond_0

    .line 541
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/share/internal/VideoUploader$UploadWorkItemBase;->getParameters()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/facebook/share/internal/VideoUploader$UploadWorkItemBase;->executeGraphRequestSynchronously(Landroid/os/Bundle;)V
    :try_end_0
    .catch Lcom/facebook/FacebookException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 551
    :goto_0
    return-void

    .line 542
    :catch_0
    move-exception v1

    .line 543
    .local v1, "fe":Lcom/facebook/FacebookException;
    invoke-virtual {p0, v1}, Lcom/facebook/share/internal/VideoUploader$UploadWorkItemBase;->endUploadWithFailure(Lcom/facebook/FacebookException;)V

    goto :goto_0

    .line 544
    .end local v1    # "fe":Lcom/facebook/FacebookException;
    :catch_1
    move-exception v0

    .line 545
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Lcom/facebook/FacebookException;

    const-string/jumbo v3, "Video upload failed"

    invoke-direct {v2, v3, v0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v2}, Lcom/facebook/share/internal/VideoUploader$UploadWorkItemBase;->endUploadWithFailure(Lcom/facebook/FacebookException;)V

    goto :goto_0

    .line 549
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/facebook/share/internal/VideoUploader$UploadWorkItemBase;->endUploadWithFailure(Lcom/facebook/FacebookException;)V

    goto :goto_0
.end method
