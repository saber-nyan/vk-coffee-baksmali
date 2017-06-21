.class public Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;
.super Lme/grishka/appkit/api/ErrorResponse;
.source "VKAPIRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/api/VKAPIRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VKErrorResponse"
.end annotation


# instance fields
.field private code:I

.field public message:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "code"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 359
    invoke-direct {p0}, Lme/grishka/appkit/api/ErrorResponse;-><init>()V

    .line 360
    iput p1, p0, Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;->code:I

    .line 361
    iput-object p2, p0, Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;->message:Ljava/lang/String;

    .line 362
    return-void
.end method


# virtual methods
.method public bindErrorView(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 385
    if-eqz p1, :cond_0

    .line 386
    const v0, 0x7f10010a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;->code:I

    iget-object v3, p0, Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;->message:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/vkcoffee/android/api/APIUtils;->getLocalizedError(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 387
    const v0, 0x7f10010b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f080163

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 389
    :cond_0
    return-void
.end method

.method public getCode()I
    .locals 1

    .prologue
    .line 368
    iget v0, p0, Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;->code:I

    return v0
.end method

.method public getCodeValue()I
    .locals 1

    .prologue
    .line 372
    iget v0, p0, Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;->code:I

    invoke-static {v0}, Lcom/vkcoffee/android/api/VKAPIRequest;->getValueFromErrorCode(I)I

    move-result v0

    return v0
.end method

.method public showToast(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 393
    iget v0, p0, Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;->code:I

    iget-object v1, p0, Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;->message:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/vkcoffee/android/api/APIUtils;->showErrorToast(Landroid/content/Context;ILjava/lang/String;)V

    .line 394
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 377
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ErrorResponse{message=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;->code:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
