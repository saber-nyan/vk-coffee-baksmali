.class public Lcom/vk/attachpicker/GraffitiConfirmDialog;
.super Landroid/app/Dialog;
.source "GraffitiConfirmDialog.java"


# instance fields
.field private graffitiContainer:Landroid/view/View;

.field private imagePreview:Lcom/vk/attachpicker/widget/AspectRatioImageView;

.field private preview:Landroid/view/View;

.field private resultContainer:Lcom/vk/attachpicker/widget/RotateLayout;

.field private sendButton:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/vkcoffee/android/api/Document;)V
    .locals 8
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "document"    # Lcom/vkcoffee/android/api/Document;

    .prologue
    const/4 v6, -0x1

    .line 26
    const v5, 0x7f0c00f1

    invoke-direct {p0, p1, v5}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 28
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/vk/attachpicker/GraffitiConfirmDialog;->setCancelable(Z)V

    .line 29
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/vk/attachpicker/GraffitiConfirmDialog;->setCanceledOnTouchOutside(Z)V

    .line 31
    new-instance v3, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v3}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 32
    .local v3, "lp":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {p0}, Lcom/vk/attachpicker/GraffitiConfirmDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    .line 33
    iput v6, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 34
    iput v6, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 35
    const/16 v5, 0x30

    iput v5, v3, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 36
    invoke-virtual {p0}, Lcom/vk/attachpicker/GraffitiConfirmDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 37
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090006

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 38
    invoke-virtual {p0}, Lcom/vk/attachpicker/GraffitiConfirmDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/high16 v6, 0x4000000

    invoke-virtual {v5, v6}, Landroid/view/Window;->addFlags(I)V

    .line 41
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f030120

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 42
    .local v1, "contentView":Landroid/view/View;
    invoke-virtual {p0, v1}, Lcom/vk/attachpicker/GraffitiConfirmDialog;->setContentView(Landroid/view/View;)V

    .line 44
    const v5, 0x7f1002ed

    invoke-virtual {p0, v5}, Lcom/vk/attachpicker/GraffitiConfirmDialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/vk/attachpicker/widget/RotateLayout;

    iput-object v5, p0, Lcom/vk/attachpicker/GraffitiConfirmDialog;->resultContainer:Lcom/vk/attachpicker/widget/RotateLayout;

    .line 45
    const v5, 0x7f100306

    invoke-virtual {p0, v5}, Lcom/vk/attachpicker/GraffitiConfirmDialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/vk/attachpicker/GraffitiConfirmDialog;->preview:Landroid/view/View;

    .line 46
    const v5, 0x7f100307

    invoke-virtual {p0, v5}, Lcom/vk/attachpicker/GraffitiConfirmDialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/vk/attachpicker/GraffitiConfirmDialog;->graffitiContainer:Landroid/view/View;

    .line 47
    const v5, 0x7f100308

    invoke-virtual {p0, v5}, Lcom/vk/attachpicker/GraffitiConfirmDialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/vk/attachpicker/widget/AspectRatioImageView;

    iput-object v5, p0, Lcom/vk/attachpicker/GraffitiConfirmDialog;->imagePreview:Lcom/vk/attachpicker/widget/AspectRatioImageView;

    .line 48
    const v5, 0x7f100309

    invoke-virtual {p0, v5}, Lcom/vk/attachpicker/GraffitiConfirmDialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/vk/attachpicker/GraffitiConfirmDialog;->sendButton:Landroid/widget/TextView;

    .line 50
    iget v5, p2, Lcom/vkcoffee/android/api/Document;->width:I

    int-to-float v5, v5

    iget v6, p2, Lcom/vkcoffee/android/api/Document;->height:I

    int-to-float v6, v6

    div-float v0, v5, v6

    .line 51
    .local v0, "ar":F
    iget-object v5, p0, Lcom/vk/attachpicker/GraffitiConfirmDialog;->imagePreview:Lcom/vk/attachpicker/widget/AspectRatioImageView;

    const/high16 v6, 0x40000000    # 2.0f

    const v7, 0x3f19999a    # 0.6f

    invoke-static {v7, v0}, Ljava/lang/Math;->max(FF)F

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v6

    invoke-virtual {v5, v6}, Lcom/vk/attachpicker/widget/AspectRatioImageView;->setAspectRatio(F)V

    .line 52
    invoke-static {}, Lcom/vk/attachpicker/Picker;->picasso()Lcom/squareup/picasso/Picasso;

    move-result-object v5

    iget-object v6, p2, Lcom/vkcoffee/android/api/Document;->url:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    .line 53
    .local v4, "req":Lcom/squareup/picasso/RequestCreator;
    invoke-static {}, Lcom/vk/attachpicker/util/Screen;->realWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    iget v6, p2, Lcom/vkcoffee/android/api/Document;->width:I

    iget v7, p2, Lcom/vkcoffee/android/api/Document;->height:I

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    int-to-float v6, v6

    div-float v2, v5, v6

    .line 54
    .local v2, "downscale":F
    const/high16 v5, 0x3f800000    # 1.0f

    cmpg-float v5, v2, v5

    if-gez v5, :cond_1

    .line 55
    iget v5, p2, Lcom/vkcoffee/android/api/Document;->width:I

    int-to-float v5, v5

    mul-float/2addr v5, v2

    float-to-int v5, v5

    iget v6, p2, Lcom/vkcoffee/android/api/Document;->height:I

    int-to-float v6, v6

    mul-float/2addr v6, v2

    float-to-int v6, v6

    invoke-virtual {v4, v5, v6}, Lcom/squareup/picasso/RequestCreator;->resize(II)Lcom/squareup/picasso/RequestCreator;

    .line 57
    :cond_1
    iget-object v5, p0, Lcom/vk/attachpicker/GraffitiConfirmDialog;->imagePreview:Lcom/vk/attachpicker/widget/AspectRatioImageView;

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 59
    iget-object v5, p0, Lcom/vk/attachpicker/GraffitiConfirmDialog;->imagePreview:Lcom/vk/attachpicker/widget/AspectRatioImageView;

    invoke-static {}, Lcom/vk/attachpicker/util/Screen;->realWidth()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/vk/attachpicker/widget/AspectRatioImageView;->setMaxHeight(I)V

    .line 60
    iget-object v5, p0, Lcom/vk/attachpicker/GraffitiConfirmDialog;->imagePreview:Lcom/vk/attachpicker/widget/AspectRatioImageView;

    invoke-static {}, Lcom/vk/attachpicker/util/Screen;->realWidth()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/vk/attachpicker/widget/AspectRatioImageView;->setMaxWidth(I)V

    .line 61
    iget-object v5, p0, Lcom/vk/attachpicker/GraffitiConfirmDialog;->imagePreview:Lcom/vk/attachpicker/widget/AspectRatioImageView;

    invoke-static {}, Lcom/vk/attachpicker/GraffitiConfirmDialog$$Lambda$1;->lambdaFactory$()Landroid/view/View$OnClickListener;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/vk/attachpicker/widget/AspectRatioImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    iget-object v5, p0, Lcom/vk/attachpicker/GraffitiConfirmDialog;->preview:Landroid/view/View;

    invoke-static {p0}, Lcom/vk/attachpicker/GraffitiConfirmDialog$$Lambda$2;->lambdaFactory$(Lcom/vk/attachpicker/GraffitiConfirmDialog;)Landroid/view/View$OnClickListener;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    iget-object v5, p0, Lcom/vk/attachpicker/GraffitiConfirmDialog;->sendButton:Landroid/widget/TextView;

    invoke-static {p2, p1}, Lcom/vk/attachpicker/GraffitiConfirmDialog$$Lambda$3;->lambdaFactory$(Lcom/vkcoffee/android/api/Document;Landroid/app/Activity;)Landroid/view/View$OnClickListener;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    return-void
.end method

.method static synthetic lambda$new$72(Landroid/view/View;)V
    .locals 0
    .param p0, "v"    # Landroid/view/View;

    .prologue
    .line 61
    return-void
.end method

.method static synthetic lambda$new$74(Lcom/vkcoffee/android/api/Document;Landroid/app/Activity;Landroid/view/View;)V
    .locals 3
    .param p2, "v"    # Landroid/view/View;

    .prologue
    .line 64
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 65
    .local v0, "result":Landroid/content/Intent;
    const-string/jumbo v1, "result_graffiti"

    new-instance v2, Lcom/vkcoffee/android/attachments/GraffitiAttachment;

    invoke-direct {v2, p0}, Lcom/vkcoffee/android/attachments/GraffitiAttachment;-><init>(Lcom/vkcoffee/android/api/Document;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 66
    const/4 v1, -0x1

    invoke-virtual {p1, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 67
    instance-of v1, p1, Lcom/vk/attachpicker/AttachActivity;

    if-eqz v1, :cond_0

    .line 68
    check-cast p1, Lcom/vk/attachpicker/AttachActivity;

    invoke-virtual {p1}, Lcom/vk/attachpicker/AttachActivity;->superFinish()V

    .line 72
    :goto_0
    return-void

    .line 70
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method


# virtual methods
.method synthetic lambda$new$73(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/vk/attachpicker/GraffitiConfirmDialog;->dismiss()V

    return-void
.end method
