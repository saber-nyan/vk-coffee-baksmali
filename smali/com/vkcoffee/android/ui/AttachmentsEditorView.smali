.class public Lcom/vkcoffee/android/ui/AttachmentsEditorView;
.super Landroid/widget/HorizontalScrollView;
.source "AttachmentsEditorView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/ui/AttachmentsEditorView$Callback;,
        Lcom/vkcoffee/android/ui/AttachmentsEditorView$ScrollRunner;
    }
.end annotation


# instance fields
.field private attachments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/attachments/Attachment;",
            ">;"
        }
    .end annotation
.end field

.field private callback:Lcom/vkcoffee/android/ui/AttachmentsEditorView$Callback;

.field private content:Landroid/widget/LinearLayout;

.field private dragPos:I

.field private dragStartX:F

.field private dragStartY:F

.field private dragView:Landroid/view/View;

.field private initTime:J

.field public isWallPhoto:Z

.field private lastTouchX:F

.field private lastTouchY:F

.field private receiver:Landroid/content/BroadcastReceiver;

.field private removeClickListener:Landroid/view/View$OnClickListener;

.field private retryClickListener:Landroid/view/View$OnClickListener;

.field private scrollRunner:Ljava/lang/Runnable;

.field public uploadOwnerId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 224
    invoke-direct {p0, p1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->attachments:Ljava/util/ArrayList;

    .line 71
    invoke-static {p0}, Lcom/vkcoffee/android/ui/AttachmentsEditorView$$Lambda$1;->lambdaFactory$(Lcom/vkcoffee/android/ui/AttachmentsEditorView;)Landroid/view/View$OnClickListener;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->removeClickListener:Landroid/view/View$OnClickListener;

    .line 72
    new-instance v0, Lcom/vkcoffee/android/ui/AttachmentsEditorView$1;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/ui/AttachmentsEditorView$1;-><init>(Lcom/vkcoffee/android/ui/AttachmentsEditorView;)V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->retryClickListener:Landroid/view/View$OnClickListener;

    .line 104
    new-instance v0, Lcom/vkcoffee/android/ui/AttachmentsEditorView$2;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/ui/AttachmentsEditorView$2;-><init>(Lcom/vkcoffee/android/ui/AttachmentsEditorView;)V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->receiver:Landroid/content/BroadcastReceiver;

    .line 215
    iput v1, p0, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->uploadOwnerId:I

    .line 216
    iput-boolean v1, p0, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->isWallPhoto:Z

    .line 221
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->initTime:J

    .line 225
    invoke-direct {p0}, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->init()V

    .line 226
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 229
    invoke-direct {p0, p1, p2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->attachments:Ljava/util/ArrayList;

    .line 71
    invoke-static {p0}, Lcom/vkcoffee/android/ui/AttachmentsEditorView$$Lambda$2;->lambdaFactory$(Lcom/vkcoffee/android/ui/AttachmentsEditorView;)Landroid/view/View$OnClickListener;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->removeClickListener:Landroid/view/View$OnClickListener;

    .line 72
    new-instance v0, Lcom/vkcoffee/android/ui/AttachmentsEditorView$1;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/ui/AttachmentsEditorView$1;-><init>(Lcom/vkcoffee/android/ui/AttachmentsEditorView;)V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->retryClickListener:Landroid/view/View$OnClickListener;

    .line 104
    new-instance v0, Lcom/vkcoffee/android/ui/AttachmentsEditorView$2;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/ui/AttachmentsEditorView$2;-><init>(Lcom/vkcoffee/android/ui/AttachmentsEditorView;)V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->receiver:Landroid/content/BroadcastReceiver;

    .line 215
    iput v1, p0, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->uploadOwnerId:I

    .line 216
    iput-boolean v1, p0, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->isWallPhoto:Z

    .line 221
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->initTime:J

    .line 230
    invoke-direct {p0}, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->init()V

    .line 231
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    .line 235
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->attachments:Ljava/util/ArrayList;

    .line 71
    invoke-static {p0}, Lcom/vkcoffee/android/ui/AttachmentsEditorView$$Lambda$3;->lambdaFactory$(Lcom/vkcoffee/android/ui/AttachmentsEditorView;)Landroid/view/View$OnClickListener;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->removeClickListener:Landroid/view/View$OnClickListener;

    .line 72
    new-instance v0, Lcom/vkcoffee/android/ui/AttachmentsEditorView$1;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/ui/AttachmentsEditorView$1;-><init>(Lcom/vkcoffee/android/ui/AttachmentsEditorView;)V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->retryClickListener:Landroid/view/View$OnClickListener;

    .line 104
    new-instance v0, Lcom/vkcoffee/android/ui/AttachmentsEditorView$2;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/ui/AttachmentsEditorView$2;-><init>(Lcom/vkcoffee/android/ui/AttachmentsEditorView;)V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->receiver:Landroid/content/BroadcastReceiver;

    .line 215
    iput v1, p0, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->uploadOwnerId:I

    .line 216
    iput-boolean v1, p0, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->isWallPhoto:Z

    .line 221
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->initTime:J

    .line 236
    invoke-direct {p0}, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->init()V

    .line 237
    return-void
.end method

.method static synthetic access$000(Lcom/vkcoffee/android/ui/AttachmentsEditorView;Lcom/vkcoffee/android/attachments/PendingPhotoAttachment;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/AttachmentsEditorView;
    .param p1, "x1"    # Lcom/vkcoffee/android/attachments/PendingPhotoAttachment;

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->uploadPhoto(Lcom/vkcoffee/android/attachments/PendingPhotoAttachment;)V

    return-void
.end method

.method static synthetic access$100(Lcom/vkcoffee/android/ui/AttachmentsEditorView;Lcom/vkcoffee/android/attachments/PendingDocumentAttachment;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/AttachmentsEditorView;
    .param p1, "x1"    # Lcom/vkcoffee/android/attachments/PendingDocumentAttachment;

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->uploadDocument(Lcom/vkcoffee/android/attachments/PendingDocumentAttachment;)V

    return-void
.end method

.method static synthetic access$1002(Lcom/vkcoffee/android/ui/AttachmentsEditorView;F)F
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/AttachmentsEditorView;
    .param p1, "x1"    # F

    .prologue
    .line 66
    iput p1, p0, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->dragStartY:F

    return p1
.end method

.method static synthetic access$1100(Lcom/vkcoffee/android/ui/AttachmentsEditorView;)F
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/AttachmentsEditorView;

    .prologue
    .line 66
    iget v0, p0, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->lastTouchY:F

    return v0
.end method

.method static synthetic access$1200(Lcom/vkcoffee/android/ui/AttachmentsEditorView;Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/AttachmentsEditorView;
    .param p1, "x1"    # Landroid/net/Uri;

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->getRealPathFromURI(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/vkcoffee/android/ui/AttachmentsEditorView;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/AttachmentsEditorView;

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->updateDragPosition()V

    return-void
.end method

.method static synthetic access$200(Lcom/vkcoffee/android/ui/AttachmentsEditorView;Lcom/vkcoffee/android/attachments/PendingVideoAttachment;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/AttachmentsEditorView;
    .param p1, "x1"    # Lcom/vkcoffee/android/attachments/PendingVideoAttachment;

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->retryUploadVideo(Lcom/vkcoffee/android/attachments/PendingVideoAttachment;)V

    return-void
.end method

.method static synthetic access$300(Lcom/vkcoffee/android/ui/AttachmentsEditorView;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/AttachmentsEditorView;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->attachments:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/vkcoffee/android/ui/AttachmentsEditorView;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/AttachmentsEditorView;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->content:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$500(Lcom/vkcoffee/android/ui/AttachmentsEditorView;)Lcom/vkcoffee/android/ui/AttachmentsEditorView$Callback;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/AttachmentsEditorView;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->callback:Lcom/vkcoffee/android/ui/AttachmentsEditorView$Callback;

    return-object v0
.end method

.method static synthetic access$600(Lcom/vkcoffee/android/ui/AttachmentsEditorView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/AttachmentsEditorView;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->dragView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$602(Lcom/vkcoffee/android/ui/AttachmentsEditorView;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/AttachmentsEditorView;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->dragView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$700(Lcom/vkcoffee/android/ui/AttachmentsEditorView;)I
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/AttachmentsEditorView;

    .prologue
    .line 66
    iget v0, p0, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->dragPos:I

    return v0
.end method

.method static synthetic access$702(Lcom/vkcoffee/android/ui/AttachmentsEditorView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/AttachmentsEditorView;
    .param p1, "x1"    # I

    .prologue
    .line 66
    iput p1, p0, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->dragPos:I

    return p1
.end method

.method static synthetic access$800(Lcom/vkcoffee/android/ui/AttachmentsEditorView;)F
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/AttachmentsEditorView;

    .prologue
    .line 66
    iget v0, p0, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->dragStartX:F

    return v0
.end method

.method static synthetic access$802(Lcom/vkcoffee/android/ui/AttachmentsEditorView;F)F
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/AttachmentsEditorView;
    .param p1, "x1"    # F

    .prologue
    .line 66
    iput p1, p0, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->dragStartX:F

    return p1
.end method

.method static synthetic access$900(Lcom/vkcoffee/android/ui/AttachmentsEditorView;)F
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/AttachmentsEditorView;

    .prologue
    .line 66
    iget v0, p0, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->lastTouchX:F

    return v0
.end method

.method private addAttachView(Landroid/view/View;Lcom/vkcoffee/android/attachments/Attachment;I)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "att"    # Lcom/vkcoffee/android/attachments/Attachment;
    .param p3, "index"    # I

    .prologue
    const/high16 v4, 0x42a00000    # 80.0f

    .line 529
    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 531
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/vkcoffee/android/ui/AttachmentsEditorView$7;

    invoke-direct {v1, p0, p1, p3}, Lcom/vkcoffee/android/ui/AttachmentsEditorView$7;-><init>(Lcom/vkcoffee/android/ui/AttachmentsEditorView;Landroid/view/View;I)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 547
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->initTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1f4

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->getScrollX()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v4

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    int-to-double v2, p3

    cmpl-double v0, v0, v2

    if-gtz v0, :cond_0

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->getWidth()I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    div-float/2addr v0, v4

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    int-to-double v2, p3

    cmpg-double v0, v0, v2

    if-gez v0, :cond_1

    .line 548
    :cond_0
    new-instance v0, Lcom/vkcoffee/android/ui/AttachmentsEditorView$8;

    invoke-direct {v0, p0, p3}, Lcom/vkcoffee/android/ui/AttachmentsEditorView$8;-><init>(Lcom/vkcoffee/android/ui/AttachmentsEditorView;I)V

    const-wide/16 v2, 0x96

    invoke-virtual {p0, v0, v2, v3}, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 555
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_2

    .line 556
    new-instance v0, Lcom/vkcoffee/android/ui/AttachmentsEditorView$9;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/ui/AttachmentsEditorView$9;-><init>(Lcom/vkcoffee/android/ui/AttachmentsEditorView;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 581
    :cond_2
    return-void
.end method

.method private canReorder(Lcom/vkcoffee/android/attachments/Attachment;Lcom/vkcoffee/android/attachments/Attachment;)Z
    .locals 3
    .param p1, "a"    # Lcom/vkcoffee/android/attachments/Attachment;
    .param p2, "b"    # Lcom/vkcoffee/android/attachments/Attachment;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 973
    instance-of v2, p1, Lcom/vkcoffee/android/attachments/FwdMessagesAttachment;

    if-eqz v2, :cond_1

    .line 997
    :cond_0
    :goto_0
    return v0

    .line 976
    :cond_1
    instance-of v2, p1, Lcom/vkcoffee/android/attachments/GeoAttachment;

    if-nez v2, :cond_0

    .line 979
    instance-of v2, p1, Lcom/vkcoffee/android/attachments/AlbumAttachment;

    if-eqz v2, :cond_2

    .line 980
    instance-of v0, p2, Lcom/vkcoffee/android/attachments/AlbumAttachment;

    goto :goto_0

    .line 982
    :cond_2
    instance-of v2, p1, Lcom/vkcoffee/android/attachments/PhotoAttachment;

    if-nez v2, :cond_3

    instance-of v2, p1, Lcom/vkcoffee/android/attachments/PendingPhotoAttachment;

    if-eqz v2, :cond_5

    .line 983
    :cond_3
    instance-of v2, p2, Lcom/vkcoffee/android/attachments/PhotoAttachment;

    if-nez v2, :cond_4

    instance-of v2, p2, Lcom/vkcoffee/android/attachments/PendingPhotoAttachment;

    if-eqz v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0

    .line 985
    :cond_5
    instance-of v2, p1, Lcom/vkcoffee/android/attachments/VideoAttachment;

    if-eqz v2, :cond_6

    .line 986
    instance-of v0, p2, Lcom/vkcoffee/android/attachments/VideoAttachment;

    goto :goto_0

    .line 988
    :cond_6
    instance-of v2, p1, Lcom/vkcoffee/android/attachments/AudioAttachment;

    if-eqz v2, :cond_7

    .line 989
    instance-of v0, p2, Lcom/vkcoffee/android/attachments/AudioAttachment;

    goto :goto_0

    .line 991
    :cond_7
    instance-of v2, p1, Lcom/vkcoffee/android/attachments/PollAttachment;

    if-eqz v2, :cond_8

    .line 992
    instance-of v0, p2, Lcom/vkcoffee/android/attachments/PollAttachment;

    goto :goto_0

    .line 994
    :cond_8
    instance-of v2, p1, Lcom/vkcoffee/android/attachments/DocumentAttachment;

    if-eqz v2, :cond_9

    .line 995
    instance-of v0, p2, Lcom/vkcoffee/android/attachments/DocumentAttachment;

    goto :goto_0

    .line 997
    :cond_9
    instance-of v2, p2, Lcom/vkcoffee/android/attachments/PhotoAttachment;

    if-nez v2, :cond_a

    instance-of v2, p2, Lcom/vkcoffee/android/attachments/VideoAttachment;

    if-nez v2, :cond_a

    instance-of v2, p2, Lcom/vkcoffee/android/attachments/AudioAttachment;

    if-nez v2, :cond_a

    instance-of v2, p2, Lcom/vkcoffee/android/attachments/PollAttachment;

    if-nez v2, :cond_a

    instance-of v2, p2, Lcom/vkcoffee/android/attachments/DocumentAttachment;

    if-nez v2, :cond_a

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_a
    move v1, v0

    goto :goto_1
.end method

.method private createDocumentView(Lcom/vkcoffee/android/attachments/DocumentAttachment;Ljava/lang/String;)Landroid/view/View;
    .locals 4
    .param p1, "att"    # Lcom/vkcoffee/android/attachments/DocumentAttachment;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 808
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f030039

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 809
    .local v0, "v":Landroid/view/View;
    const v1, 0x7f100149

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 810
    const v1, 0x7f10013e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 811
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/vkcoffee/android/ui/AttachmentsEditorView$13;

    invoke-direct {v2, p0, p1, v0}, Lcom/vkcoffee/android/ui/AttachmentsEditorView$13;-><init>(Lcom/vkcoffee/android/ui/AttachmentsEditorView;Lcom/vkcoffee/android/attachments/DocumentAttachment;Landroid/view/View;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 830
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 831
    const v1, 0x7f10014b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->removeClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 832
    return-object v0
.end method

.method private createFwdView(I)Landroid/view/View;
    .locals 7
    .param p1, "count"    # I

    .prologue
    .line 599
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f03003a

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 600
    .local v0, "v":Landroid/view/View;
    const v1, 0x7f10013e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e0021

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, p1, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 601
    const v1, 0x7f10014c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 602
    const v1, 0x7f10014b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->removeClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 603
    return-object v0
.end method

.method private createImagelessView(ILjava/lang/String;Ljava/lang/String;Z)Landroid/view/View;
    .locals 6
    .param p1, "icon"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "subtitle"    # Ljava/lang/String;
    .param p4, "progress"    # Z

    .prologue
    const/4 v5, 0x1

    const v4, 0x7f100149

    .line 584
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz p4, :cond_1

    const v1, 0x7f03003c

    :goto_0
    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 585
    .local v0, "v":Landroid/view/View;
    const v1, 0x7f10013e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 586
    const v1, 0x7f10013f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 587
    const v1, 0x7f10014d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 588
    if-eqz p4, :cond_0

    .line 589
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    new-instance v2, Lcom/vkcoffee/android/ui/CircularProgressDrawable;

    invoke-direct {v2, v5}, Lcom/vkcoffee/android/ui/CircularProgressDrawable;-><init>(Z)V

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 590
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    new-instance v2, Lcom/vkcoffee/android/ui/CircularProgressDrawable;

    invoke-direct {v2, v5}, Lcom/vkcoffee/android/ui/CircularProgressDrawable;-><init>(Z)V

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 591
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 592
    const v1, 0x7f10014a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->retryClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 594
    :cond_0
    const v1, 0x7f10014b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->removeClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 595
    return-object v0

    .line 584
    .end local v0    # "v":Landroid/view/View;
    :cond_1
    const v1, 0x7f03003b

    goto :goto_0
.end method

.method private createLocalImageView(Ljava/lang/String;I)Landroid/view/View;
    .locals 5
    .param p1, "fileUri"    # Ljava/lang/String;
    .param p2, "layout"    # I

    .prologue
    const/4 v4, 0x1

    const v3, 0x7f100149

    .line 677
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, p2, v2}, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 678
    .local v0, "v":Landroid/view/View;
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    new-instance v2, Lcom/vkcoffee/android/ui/CircularProgressDrawable;

    invoke-direct {v2, v4}, Lcom/vkcoffee/android/ui/CircularProgressDrawable;-><init>(Z)V

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 679
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    new-instance v2, Lcom/vkcoffee/android/ui/CircularProgressDrawable;

    invoke-direct {v2, v4}, Lcom/vkcoffee/android/ui/CircularProgressDrawable;-><init>(Z)V

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 680
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 681
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/vkcoffee/android/ui/AttachmentsEditorView$11;

    invoke-direct {v2, p0, p1, v0}, Lcom/vkcoffee/android/ui/AttachmentsEditorView$11;-><init>(Lcom/vkcoffee/android/ui/AttachmentsEditorView;Ljava/lang/String;Landroid/view/View;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 774
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 775
    const v1, 0x7f10014b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->removeClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 776
    const v1, 0x7f10014a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->retryClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 777
    return-object v0
.end method

.method private createLocationView(Lcom/vkcoffee/android/attachments/GeoAttachment;)Landroid/view/View;
    .locals 4
    .param p1, "att"    # Lcom/vkcoffee/android/attachments/GeoAttachment;

    .prologue
    .line 836
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f03003e

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 837
    .local v0, "v":Landroid/view/View;
    const v1, 0x7f100149

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 838
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/vkcoffee/android/ui/AttachmentsEditorView$14;

    invoke-direct {v2, p0, p1, v0}, Lcom/vkcoffee/android/ui/AttachmentsEditorView$14;-><init>(Lcom/vkcoffee/android/ui/AttachmentsEditorView;Lcom/vkcoffee/android/attachments/GeoAttachment;Landroid/view/View;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 859
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 860
    const v1, 0x7f10014b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->removeClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 861
    return-object v0
.end method

.method private createMarketView(Lcom/vkcoffee/android/attachments/MarketAttachment;)Landroid/view/View;
    .locals 6
    .param p1, "att"    # Lcom/vkcoffee/android/attachments/MarketAttachment;

    .prologue
    const v5, 0x7f10014b

    const/4 v2, 0x0

    .line 666
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f03003d

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 667
    .local v0, "v":Landroid/view/View;
    const v1, 0x7f10013e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v3, p1, Lcom/vkcoffee/android/attachments/MarketAttachment;->good:Lcom/vkcoffee/android/data/Good;

    iget-object v3, v3, Lcom/vkcoffee/android/data/Good;->title:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 668
    const v1, 0x7f10014e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v3, p1, Lcom/vkcoffee/android/attachments/MarketAttachment;->good:Lcom/vkcoffee/android/data/Good;

    iget-object v3, v3, Lcom/vkcoffee/android/data/Good;->price_text:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 669
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v3, p0, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->removeClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 670
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-boolean v1, p1, Lcom/vkcoffee/android/attachments/MarketAttachment;->canEdit:Z

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 671
    const v1, 0x7f100148

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iget-object v2, p1, Lcom/vkcoffee/android/attachments/MarketAttachment;->good:Lcom/vkcoffee/android/data/Good;

    iget-object v2, v2, Lcom/vkcoffee/android/data/Good;->thumb_photo:Ljava/lang/String;

    invoke-static {v1, v3, v2}, Lme/grishka/appkit/imageloader/ViewImageLoader;->load(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    .line 673
    return-object v0

    .line 670
    :cond_0
    const/16 v1, 0x8

    goto :goto_0
.end method

.method private createPendingDocumentView(Lcom/vkcoffee/android/attachments/DocumentAttachment;Ljava/lang/String;)Landroid/view/View;
    .locals 3
    .param p1, "att"    # Lcom/vkcoffee/android/attachments/DocumentAttachment;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 660
    iget-object v1, p1, Lcom/vkcoffee/android/attachments/DocumentAttachment;->thumb:Ljava/lang/String;

    const v2, 0x7f030039

    invoke-direct {p0, v1, v2}, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->createLocalImageView(Ljava/lang/String;I)Landroid/view/View;

    move-result-object v0

    .line 661
    .local v0, "v":Landroid/view/View;
    const v1, 0x7f10013e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 662
    return-object v0
.end method

.method private createPhotoView(Lcom/vkcoffee/android/attachments/PendingPhotoAttachment;)Landroid/view/View;
    .locals 2
    .param p1, "att"    # Lcom/vkcoffee/android/attachments/PendingPhotoAttachment;

    .prologue
    .line 656
    iget-object v0, p1, Lcom/vkcoffee/android/attachments/PendingPhotoAttachment;->fileUri:Ljava/lang/String;

    const v1, 0x7f03003e

    invoke-direct {p0, v0, v1}, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->createLocalImageView(Ljava/lang/String;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private createPhotoView(Lcom/vkcoffee/android/attachments/PhotoAttachment;)Landroid/view/View;
    .locals 4
    .param p1, "att"    # Lcom/vkcoffee/android/attachments/PhotoAttachment;

    .prologue
    .line 781
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f03003e

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 782
    .local v0, "v":Landroid/view/View;
    const v1, 0x7f100149

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 783
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/vkcoffee/android/ui/AttachmentsEditorView$12;

    invoke-direct {v2, p0, p1, v0}, Lcom/vkcoffee/android/ui/AttachmentsEditorView$12;-><init>(Lcom/vkcoffee/android/ui/AttachmentsEditorView;Lcom/vkcoffee/android/attachments/PhotoAttachment;Landroid/view/View;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 802
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 803
    const v1, 0x7f10014b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->removeClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 804
    return-object v0
.end method

.method private createVideoView(Lcom/vkcoffee/android/attachments/VideoAttachment;)Landroid/view/View;
    .locals 8
    .param p1, "att"    # Lcom/vkcoffee/android/attachments/VideoAttachment;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const v5, 0x7f100149

    .line 607
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f03003f

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 608
    .local v0, "v":Landroid/view/View;
    const v1, 0x7f100150

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string/jumbo v2, "%d:%02d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p1, Lcom/vkcoffee/android/attachments/VideoAttachment;->duration:I

    div-int/lit8 v4, v4, 0x3c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    iget v4, p1, Lcom/vkcoffee/android/attachments/VideoAttachment;->duration:I

    rem-int/lit8 v4, v4, 0x3c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 609
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/vkcoffee/android/ui/AttachmentsEditorView$10;

    invoke-direct {v2, p0, p1, v0}, Lcom/vkcoffee/android/ui/AttachmentsEditorView$10;-><init>(Lcom/vkcoffee/android/ui/AttachmentsEditorView;Lcom/vkcoffee/android/attachments/VideoAttachment;Landroid/view/View;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 632
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 633
    const v1, 0x7f10014b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->removeClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 634
    instance-of v1, p1, Lcom/vkcoffee/android/attachments/PendingVideoAttachment;

    if-eqz v1, :cond_0

    .line 635
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    new-instance v2, Lcom/vkcoffee/android/ui/CircularProgressDrawable;

    invoke-direct {v2, v7}, Lcom/vkcoffee/android/ui/CircularProgressDrawable;-><init>(Z)V

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 636
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    new-instance v2, Lcom/vkcoffee/android/ui/CircularProgressDrawable;

    invoke-direct {v2, v7}, Lcom/vkcoffee/android/ui/CircularProgressDrawable;-><init>(Z)V

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 637
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    invoke-virtual {v1, v6}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 638
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 639
    const v1, 0x7f10014a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->retryClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 641
    :cond_0
    return-object v0
.end method

.method private getRealPathFromURI(Landroid/net/Uri;)Ljava/lang/String;
    .locals 8
    .param p1, "contentUri"    # Landroid/net/Uri;

    .prologue
    const/4 v3, 0x0

    .line 645
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 646
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 652
    :goto_0
    return-object v0

    .line 648
    :cond_0
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v1, "_data"

    aput-object v1, v2, v0

    .line 649
    .local v2, "proj":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 650
    .local v7, "cursor":Landroid/database/Cursor;
    const-string/jumbo v0, "_data"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 651
    .local v6, "column_index":I
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 652
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private init()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 240
    new-instance v1, Lcom/vkcoffee/android/ui/AttachmentsEditorView$3;

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/vkcoffee/android/ui/AttachmentsEditorView$3;-><init>(Lcom/vkcoffee/android/ui/AttachmentsEditorView;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->content:Landroid/widget/LinearLayout;

    .line 260
    iget-object v1, p0, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->content:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 261
    iget-object v1, p0, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->content:Landroid/widget/LinearLayout;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 262
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_0

    .line 263
    new-instance v0, Landroid/animation/LayoutTransition;

    invoke-direct {v0}, Landroid/animation/LayoutTransition;-><init>()V

    .line 264
    .local v0, "trans":Landroid/animation/LayoutTransition;
    iget-object v1, p0, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->content:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 265
    invoke-direct {p0}, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->resetTransitionAnims()V

    .line 267
    .end local v0    # "trans":Landroid/animation/LayoutTransition;
    :cond_0
    iget-object v1, p0, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->content:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->addView(Landroid/view/View;)V

    .line 268
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->setFillViewport(Z)V

    .line 269
    invoke-virtual {p0, v3}, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->setHorizontalScrollBarEnabled(Z)V

    .line 270
    return-void
.end method

.method static synthetic lambda$resetTransitionAnims$218(F)F
    .locals 2
    .param p0, "input"    # F

    .prologue
    .line 279
    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v1, 0x40c00000    # 6.0f

    mul-float/2addr v1, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method private resetTransitionAnims()V
    .locals 13

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x2

    .line 273
    iget-object v3, p0, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->content:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v2

    .line 274
    .local v2, "trans":Landroid/animation/LayoutTransition;
    invoke-virtual {v2, v9}, Landroid/animation/LayoutTransition;->setAnimateParentHierarchy(Z)V

    .line 275
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 276
    .local v0, "animAdding":Landroid/animation/AnimatorSet;
    new-array v3, v12, [Landroid/animation/Animator;

    const-string/jumbo v4, "scaleX"

    new-array v5, v8, [F

    fill-array-data v5, :array_0

    invoke-static {v10, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v9

    const-string/jumbo v4, "scaleY"

    new-array v5, v8, [F

    fill-array-data v5, :array_1

    invoke-static {v10, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v11

    const-string/jumbo v4, "alpha"

    new-array v5, v8, [F

    fill-array-data v5, :array_2

    invoke-static {v10, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 277
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/Animator;

    new-instance v4, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v4}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {v3, v4}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 278
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/Animator;

    new-instance v4, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v4}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {v3, v4}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 279
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/Animator;

    invoke-static {}, Lcom/vkcoffee/android/ui/AttachmentsEditorView$$Lambda$4;->lambdaFactory$()Landroid/animation/TimeInterpolator;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 281
    new-instance v3, Lcom/vkcoffee/android/ui/AttachmentsEditorView$4;

    invoke-direct {v3, p0}, Lcom/vkcoffee/android/ui/AttachmentsEditorView$4;-><init>(Lcom/vkcoffee/android/ui/AttachmentsEditorView;)V

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 288
    invoke-virtual {v2, v8, v0}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    .line 289
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 290
    .local v1, "animRemoving":Landroid/animation/AnimatorSet;
    const/4 v3, 0x4

    new-array v3, v3, [Landroid/animation/Animator;

    const-string/jumbo v4, "scaleX"

    new-array v5, v8, [F

    fill-array-data v5, :array_3

    invoke-static {v10, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    const-wide/16 v6, 0x12c

    invoke-virtual {v4, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v9

    const-string/jumbo v4, "scaleY"

    new-array v5, v8, [F

    fill-array-data v5, :array_4

    invoke-static {v10, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    const-wide/16 v6, 0x12c

    invoke-virtual {v4, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v11

    const-string/jumbo v4, "rotation"

    new-array v5, v11, [F

    const/high16 v6, 0x42b40000    # 90.0f

    aput v6, v5, v9

    invoke-static {v10, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    const-wide/16 v6, 0x12c

    invoke-virtual {v4, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v8

    const-string/jumbo v4, "alpha"

    new-array v5, v11, [F

    const/4 v6, 0x0

    aput v6, v5, v9

    invoke-static {v10, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    const-wide/16 v6, 0x12c

    invoke-virtual {v4, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v12

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 291
    new-instance v3, Lcom/vkcoffee/android/ui/AttachmentsEditorView$5;

    invoke-direct {v3, p0}, Lcom/vkcoffee/android/ui/AttachmentsEditorView$5;-><init>(Lcom/vkcoffee/android/ui/AttachmentsEditorView;)V

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 300
    invoke-virtual {v2, v12, v1}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    .line 301
    const-wide/16 v4, 0x96

    invoke-virtual {v2, v11, v4, v5}, Landroid/animation/LayoutTransition;->setStartDelay(IJ)V

    .line 302
    const-wide/16 v4, 0x0

    invoke-virtual {v2, v9, v4, v5}, Landroid/animation/LayoutTransition;->setStartDelay(IJ)V

    .line 303
    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v8, v4, v5}, Landroid/animation/LayoutTransition;->setStartDelay(IJ)V

    .line 304
    const-wide/16 v4, 0x0

    invoke-virtual {v2, v12, v4, v5}, Landroid/animation/LayoutTransition;->setStartDelay(IJ)V

    .line 305
    return-void

    .line 276
    :array_0
    .array-data 4
        0x3dcccccd    # 0.1f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3dcccccd    # 0.1f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 290
    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x3dcccccd    # 0.1f
    .end array-data

    :array_4
    .array-data 4
        0x3f800000    # 1.0f
        0x3dcccccd    # 0.1f
    .end array-data
.end method

.method private retryUploadVideo(Lcom/vkcoffee/android/attachments/PendingVideoAttachment;)V
    .locals 4
    .param p1, "att"    # Lcom/vkcoffee/android/attachments/PendingVideoAttachment;

    .prologue
    .line 901
    new-instance v0, Lcom/vkcoffee/android/ui/AttachmentsEditorView$18;

    invoke-direct {v0, p0, p1}, Lcom/vkcoffee/android/ui/AttachmentsEditorView$18;-><init>(Lcom/vkcoffee/android/ui/AttachmentsEditorView;Lcom/vkcoffee/android/attachments/PendingVideoAttachment;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {p0, v0, v2, v3}, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 906
    return-void
.end method

.method private updateDragPosition()V
    .locals 8

    .prologue
    .line 926
    iget-object v4, p0, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->dragView:Landroid/view/View;

    iget v5, p0, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->lastTouchX:F

    iget v6, p0, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->dragStartX:F

    sub-float/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/view/View;->setTranslationX(F)V

    .line 927
    iget-object v4, p0, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->dragView:Landroid/view/View;

    iget v5, p0, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->lastTouchY:F

    iget v6, p0, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->dragStartY:F

    sub-float/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/view/View;->setTranslationY(F)V

    .line 928
    iget-object v4, p0, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->dragView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->dragView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getTranslationX()F

    move-result v5

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->dragView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float v2, v4, v5

    .line 930
    .local v2, "dpos":F
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 931
    .local v3, "rdpos":I
    iget v4, p0, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->dragPos:I

    if-eq v3, v4, :cond_0

    if-ltz v3, :cond_0

    iget-object v4, p0, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->content:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 932
    iget-object v4, p0, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->attachments:Ljava/util/ArrayList;

    iget v5, p0, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->dragPos:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkcoffee/android/attachments/Attachment;

    iget-object v5, p0, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vkcoffee/android/attachments/Attachment;

    invoke-direct {p0, v4, v5}, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->canReorder(Lcom/vkcoffee/android/attachments/Attachment;Lcom/vkcoffee/android/attachments/Attachment;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 933
    iget-object v4, p0, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->content:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->dragView:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 934
    iget-object v4, p0, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->content:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->dragView:Landroid/view/View;

    invoke-virtual {v4, v5, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 935
    iget-object v4, p0, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->attachments:Ljava/util/ArrayList;

    iget v5, p0, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->dragPos:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/attachments/Attachment;

    .line 936
    .local v0, "a":Lcom/vkcoffee/android/attachments/Attachment;
    iget-object v4, p0, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkcoffee/android/attachments/Attachment;

    .line 937
    .local v1, "b":Lcom/vkcoffee/android/attachments/Attachment;
    iget-object v4, p0, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v4, v3, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 938
    iget-object v4, p0, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->attachments:Ljava/util/ArrayList;

    iget v5, p0, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->dragPos:I

    invoke-virtual {v4, v5, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 939
    iget-object v4, p0, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->dragView:Landroid/view/View;

    iget-object v5, p0, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->dragView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getTranslationX()F

    move-result v5

    iget v6, p0, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->dragPos:I

    sub-int v6, v3, v6

    iget-object v7, p0, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->dragView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    mul-int/2addr v6, v7

    int-to-float v6, v6

    sub-float/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/view/View;->setTranslationX(F)V

    .line 940
    iget v4, p0, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->dragStartX:F

    iget v5, p0, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->dragPos:I

    sub-int v5, v3, v5

    iget-object v6, p0, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->dragView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    mul-int/2addr v5, v6

    int-to-float v5, v5

    add-float/2addr v4, v5

    iput v4, p0, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->dragStartX:F

    .line 941
    iput v3, p0, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->dragPos:I

    .line 944
    .end local v0    # "a":Lcom/vkcoffee/android/attachments/Attachment;
    .end local v1    # "b":Lcom/vkcoffee/android/attachments/Attachment;
    :cond_0
    iget-object v4, p0, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->dragView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->dragView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getTranslationX()F

    move-result v5

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->dragView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x3

    mul-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->getScrollX()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_2

    .line 945
    iget-object v4, p0, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->scrollRunner:Ljava/lang/Runnable;

    if-nez v4, :cond_1

    .line 946
    new-instance v4, Lcom/vkcoffee/android/ui/AttachmentsEditorView$ScrollRunner;

    const/4 v5, 0x1

    invoke-direct {v4, p0, v5}, Lcom/vkcoffee/android/ui/AttachmentsEditorView$ScrollRunner;-><init>(Lcom/vkcoffee/android/ui/AttachmentsEditorView;I)V

    iput-object v4, p0, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->scrollRunner:Ljava/lang/Runnable;

    .line 947
    iget-object v4, p0, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->scrollRunner:Ljava/lang/Runnable;

    invoke-virtual {p0, v4}, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->post(Ljava/lang/Runnable;)Z

    .line 960
    :cond_1
    :goto_0
    return-void

    .line 949
    :cond_2
    iget-object v4, p0, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->dragView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->dragView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getTranslationX()F

    move-result v5

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->dragView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x3

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->getScrollX()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v4, v5

    const/4 v5, 0x0

    cmpg-float v4, v4, v5

    if-gez v4, :cond_3

    .line 950
    iget-object v4, p0, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->scrollRunner:Ljava/lang/Runnable;

    if-nez v4, :cond_1

    .line 951
    new-instance v4, Lcom/vkcoffee/android/ui/AttachmentsEditorView$ScrollRunner;

    const/4 v5, -0x1

    invoke-direct {v4, p0, v5}, Lcom/vkcoffee/android/ui/AttachmentsEditorView$ScrollRunner;-><init>(Lcom/vkcoffee/android/ui/AttachmentsEditorView;I)V

    iput-object v4, p0, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->scrollRunner:Ljava/lang/Runnable;

    .line 952
    iget-object v4, p0, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->scrollRunner:Ljava/lang/Runnable;

    invoke-virtual {p0, v4}, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 955
    :cond_3
    iget-object v4, p0, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->scrollRunner:Ljava/lang/Runnable;

    if-eqz v4, :cond_1

    .line 956
    iget-object v4, p0, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->scrollRunner:Ljava/lang/Runnable;

    invoke-virtual {p0, v4}, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 957
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->scrollRunner:Ljava/lang/Runnable;

    goto :goto_0
.end method

.method private uploadDocument(Lcom/vkcoffee/android/attachments/PendingDocumentAttachment;)V
    .locals 4
    .param p1, "att"    # Lcom/vkcoffee/android/attachments/PendingDocumentAttachment;

    .prologue
    .line 880
    new-instance v0, Lcom/vkcoffee/android/ui/AttachmentsEditorView$16;

    invoke-direct {v0, p0, p1}, Lcom/vkcoffee/android/ui/AttachmentsEditorView$16;-><init>(Lcom/vkcoffee/android/ui/AttachmentsEditorView;Lcom/vkcoffee/android/attachments/PendingDocumentAttachment;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {p0, v0, v2, v3}, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 887
    return-void
.end method

.method private uploadPhoto(Lcom/vkcoffee/android/attachments/PendingPhotoAttachment;)V
    .locals 4
    .param p1, "att"    # Lcom/vkcoffee/android/attachments/PendingPhotoAttachment;

    .prologue
    .line 865
    new-instance v0, Lcom/vkcoffee/android/ui/AttachmentsEditorView$15;

    invoke-direct {v0, p0, p1}, Lcom/vkcoffee/android/ui/AttachmentsEditorView$15;-><init>(Lcom/vkcoffee/android/ui/AttachmentsEditorView;Lcom/vkcoffee/android/attachments/PendingPhotoAttachment;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {p0, v0, v2, v3}, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 877
    return-void
.end method

.method private uploadVideo(Lcom/vkcoffee/android/attachments/PendingVideoAttachment;)V
    .locals 4
    .param p1, "att"    # Lcom/vkcoffee/android/attachments/PendingVideoAttachment;

    .prologue
    .line 890
    new-instance v0, Lcom/vkcoffee/android/ui/AttachmentsEditorView$17;

    invoke-direct {v0, p0, p1}, Lcom/vkcoffee/android/ui/AttachmentsEditorView$17;-><init>(Lcom/vkcoffee/android/ui/AttachmentsEditorView;Lcom/vkcoffee/android/attachments/PendingVideoAttachment;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {p0, v0, v2, v3}, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 898
    return-void
.end method


# virtual methods
.method public add(Lcom/vkcoffee/android/attachments/Attachment;)V
    .locals 26
    .param p1, "att"    # Lcom/vkcoffee/android/attachments/Attachment;

    .prologue
    .line 330
    const-string/jumbo v20, "vk"

    const-string/jumbo v21, "Attach editor add"

    invoke-static/range {v20 .. v21}, Lcom/vkcoffee/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->attachments:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 332
    .local v12, "idx":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->attachments:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    if-lez v20, :cond_9

    .line 343
    const/4 v15, 0x0

    .local v15, "photos":I
    const/4 v7, 0x0

    .local v7, "albums":I
    const/16 v19, 0x0

    .local v19, "videos":I
    const/4 v8, 0x0

    .local v8, "audios":I
    const/16 v16, 0x0

    .local v16, "polls":I
    const/4 v10, 0x0

    .local v10, "docs":I
    const/4 v14, 0x0

    .local v14, "others":I
    const/4 v11, 0x0

    .line 344
    .local v11, "fwds":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->attachments:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :goto_0
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_8

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vkcoffee/android/attachments/Attachment;

    .line 345
    .local v6, "a":Lcom/vkcoffee/android/attachments/Attachment;
    instance-of v0, v6, Lcom/vkcoffee/android/attachments/AlbumAttachment;

    move/from16 v21, v0

    if-eqz v21, :cond_0

    .line 346
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 347
    :cond_0
    instance-of v0, v6, Lcom/vkcoffee/android/attachments/PhotoAttachment;

    move/from16 v21, v0

    if-nez v21, :cond_1

    instance-of v0, v6, Lcom/vkcoffee/android/attachments/PendingPhotoAttachment;

    move/from16 v21, v0

    if-eqz v21, :cond_2

    .line 348
    :cond_1
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 349
    :cond_2
    instance-of v0, v6, Lcom/vkcoffee/android/attachments/VideoAttachment;

    move/from16 v21, v0

    if-eqz v21, :cond_3

    .line 350
    add-int/lit8 v19, v19, 0x1

    goto :goto_0

    .line 351
    :cond_3
    instance-of v0, v6, Lcom/vkcoffee/android/attachments/AudioAttachment;

    move/from16 v21, v0

    if-eqz v21, :cond_4

    .line 352
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 353
    :cond_4
    instance-of v0, v6, Lcom/vkcoffee/android/attachments/PollAttachment;

    move/from16 v21, v0

    if-eqz v21, :cond_5

    .line 354
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 355
    :cond_5
    instance-of v0, v6, Lcom/vkcoffee/android/attachments/DocumentAttachment;

    move/from16 v21, v0

    if-eqz v21, :cond_6

    .line 356
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 357
    :cond_6
    instance-of v0, v6, Lcom/vkcoffee/android/attachments/FwdMessagesAttachment;

    move/from16 v21, v0

    if-eqz v21, :cond_7

    .line 358
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 360
    :cond_7
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 363
    .end local v6    # "a":Lcom/vkcoffee/android/attachments/Attachment;
    :cond_8
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/vkcoffee/android/attachments/AlbumAttachment;

    move/from16 v20, v0

    if-eqz v20, :cond_b

    .line 364
    add-int v12, v15, v7

    .line 378
    :goto_1
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/vkcoffee/android/attachments/GeoAttachment;

    move/from16 v20, v0

    if-eqz v20, :cond_9

    .line 379
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->attachments:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    sub-int v12, v20, v11

    .line 382
    .end local v7    # "albums":I
    .end local v8    # "audios":I
    .end local v10    # "docs":I
    .end local v11    # "fwds":I
    .end local v14    # "others":I
    .end local v15    # "photos":I
    .end local v16    # "polls":I
    .end local v19    # "videos":I
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->attachments:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v12, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 383
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/vkcoffee/android/attachments/PhotoAttachment;

    move/from16 v20, v0

    if-eqz v20, :cond_12

    move-object/from16 v20, p1

    .line 384
    check-cast v20, Lcom/vkcoffee/android/attachments/PhotoAttachment;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->createPhotoView(Lcom/vkcoffee/android/attachments/PhotoAttachment;)Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2, v12}, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->addAttachView(Landroid/view/View;Lcom/vkcoffee/android/attachments/Attachment;I)V

    .line 439
    .end local p1    # "att":Lcom/vkcoffee/android/attachments/Attachment;
    :cond_a
    :goto_2
    return-void

    .line 365
    .restart local v7    # "albums":I
    .restart local v8    # "audios":I
    .restart local v10    # "docs":I
    .restart local v11    # "fwds":I
    .restart local v14    # "others":I
    .restart local v15    # "photos":I
    .restart local v16    # "polls":I
    .restart local v19    # "videos":I
    .restart local p1    # "att":Lcom/vkcoffee/android/attachments/Attachment;
    :cond_b
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/vkcoffee/android/attachments/PhotoAttachment;

    move/from16 v20, v0

    if-nez v20, :cond_c

    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/vkcoffee/android/attachments/PendingPhotoAttachment;

    move/from16 v20, v0

    if-eqz v20, :cond_d

    .line 366
    :cond_c
    move v12, v15

    goto :goto_1

    .line 367
    :cond_d
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/vkcoffee/android/attachments/VideoAttachment;

    move/from16 v20, v0

    if-eqz v20, :cond_e

    .line 368
    add-int v20, v15, v7

    add-int v12, v20, v19

    goto :goto_1

    .line 369
    :cond_e
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/vkcoffee/android/attachments/AudioAttachment;

    move/from16 v20, v0

    if-eqz v20, :cond_f

    .line 370
    add-int v20, v15, v7

    add-int v20, v20, v19

    add-int v12, v20, v8

    goto :goto_1

    .line 371
    :cond_f
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/vkcoffee/android/attachments/PollAttachment;

    move/from16 v20, v0

    if-eqz v20, :cond_10

    .line 372
    add-int v20, v15, v7

    add-int v20, v20, v19

    add-int v20, v20, v8

    add-int v12, v20, v16

    goto :goto_1

    .line 373
    :cond_10
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/vkcoffee/android/attachments/DocumentAttachment;

    move/from16 v20, v0

    if-eqz v20, :cond_11

    .line 374
    add-int v20, v15, v7

    add-int v20, v20, v19

    add-int v20, v20, v8

    add-int v20, v20, v16

    add-int v12, v20, v10

    goto/16 :goto_1

    .line 376
    :cond_11
    add-int v20, v15, v7

    add-int v20, v20, v19

    add-int v20, v20, v8

    add-int v20, v20, v16

    add-int v20, v20, v10

    add-int v12, v20, v14

    goto/16 :goto_1

    .line 385
    .end local v7    # "albums":I
    .end local v8    # "audios":I
    .end local v10    # "docs":I
    .end local v11    # "fwds":I
    .end local v14    # "others":I
    .end local v15    # "photos":I
    .end local v16    # "polls":I
    .end local v19    # "videos":I
    :cond_12
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/vkcoffee/android/attachments/PendingPhotoAttachment;

    move/from16 v20, v0

    if-eqz v20, :cond_13

    move-object/from16 v20, p1

    .line 386
    check-cast v20, Lcom/vkcoffee/android/attachments/PendingPhotoAttachment;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->createPhotoView(Lcom/vkcoffee/android/attachments/PendingPhotoAttachment;)Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2, v12}, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->addAttachView(Landroid/view/View;Lcom/vkcoffee/android/attachments/Attachment;I)V

    .line 387
    check-cast p1, Lcom/vkcoffee/android/attachments/PendingPhotoAttachment;

    .end local p1    # "att":Lcom/vkcoffee/android/attachments/Attachment;
    invoke-direct/range {p0 .. p1}, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->uploadPhoto(Lcom/vkcoffee/android/attachments/PendingPhotoAttachment;)V

    goto/16 :goto_2

    .line 388
    .restart local p1    # "att":Lcom/vkcoffee/android/attachments/Attachment;
    :cond_13
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/vkcoffee/android/attachments/AudioAttachment;

    move/from16 v20, v0

    if-eqz v20, :cond_14

    move-object/from16 v6, p1

    .line 389
    check-cast v6, Lcom/vkcoffee/android/attachments/AudioAttachment;

    .line 390
    .local v6, "a":Lcom/vkcoffee/android/attachments/AudioAttachment;
    const v20, 0x7f020125

    iget-object v0, v6, Lcom/vkcoffee/android/attachments/AudioAttachment;->artist:Ljava/lang/String;

    move-object/from16 v21, v0

    iget-object v0, v6, Lcom/vkcoffee/android/attachments/AudioAttachment;->title:Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    move/from16 v4, v23

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->createImagelessView(ILjava/lang/String;Ljava/lang/String;Z)Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2, v12}, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->addAttachView(Landroid/view/View;Lcom/vkcoffee/android/attachments/Attachment;I)V

    goto/16 :goto_2

    .line 391
    .end local v6    # "a":Lcom/vkcoffee/android/attachments/AudioAttachment;
    :cond_14
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/vkcoffee/android/attachments/VideoAttachment;

    move/from16 v20, v0

    if-eqz v20, :cond_15

    move-object/from16 v20, p1

    .line 392
    check-cast v20, Lcom/vkcoffee/android/attachments/VideoAttachment;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->createVideoView(Lcom/vkcoffee/android/attachments/VideoAttachment;)Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2, v12}, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->addAttachView(Landroid/view/View;Lcom/vkcoffee/android/attachments/Attachment;I)V

    .line 393
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/vkcoffee/android/attachments/PendingVideoAttachment;

    move/from16 v20, v0

    if-eqz v20, :cond_a

    .line 394
    check-cast p1, Lcom/vkcoffee/android/attachments/PendingVideoAttachment;

    .end local p1    # "att":Lcom/vkcoffee/android/attachments/Attachment;
    invoke-direct/range {p0 .. p1}, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->uploadVideo(Lcom/vkcoffee/android/attachments/PendingVideoAttachment;)V

    goto/16 :goto_2

    .line 396
    .restart local p1    # "att":Lcom/vkcoffee/android/attachments/Attachment;
    :cond_15
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/vkcoffee/android/attachments/MarketAttachment;

    move/from16 v20, v0

    if-eqz v20, :cond_16

    move-object/from16 v20, p1

    .line 397
    check-cast v20, Lcom/vkcoffee/android/attachments/MarketAttachment;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->createMarketView(Lcom/vkcoffee/android/attachments/MarketAttachment;)Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2, v12}, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->addAttachView(Landroid/view/View;Lcom/vkcoffee/android/attachments/Attachment;I)V

    goto/16 :goto_2

    .line 398
    :cond_16
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/vkcoffee/android/attachments/DocumentAttachment;

    move/from16 v20, v0

    if-eqz v20, :cond_1a

    move-object/from16 v6, p1

    .line 399
    check-cast v6, Lcom/vkcoffee/android/attachments/DocumentAttachment;

    .line 400
    .local v6, "a":Lcom/vkcoffee/android/attachments/DocumentAttachment;
    iget-object v0, v6, Lcom/vkcoffee/android/attachments/DocumentAttachment;->title:Ljava/lang/String;

    move-object/from16 v20, v0

    const-string/jumbo v21, "\\."

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    .line 401
    .local v18, "sp":[Ljava/lang/String;
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/vkcoffee/android/attachments/PendingDocumentAttachment;

    move/from16 v20, v0

    if-eqz v20, :cond_17

    move-object/from16 v20, p1

    .line 402
    check-cast v20, Lcom/vkcoffee/android/attachments/PendingDocumentAttachment;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->uploadDocument(Lcom/vkcoffee/android/attachments/PendingDocumentAttachment;)V

    .line 404
    :cond_17
    iget-object v0, v6, Lcom/vkcoffee/android/attachments/DocumentAttachment;->thumb:Ljava/lang/String;

    move-object/from16 v20, v0

    if-eqz v20, :cond_19

    iget-object v0, v6, Lcom/vkcoffee/android/attachments/DocumentAttachment;->thumb:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v20

    if-lez v20, :cond_19

    .line 405
    instance-of v0, v6, Lcom/vkcoffee/android/attachments/PendingDocumentAttachment;

    move/from16 v20, v0

    if-eqz v20, :cond_18

    .line 406
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v21, v0

    add-int/lit8 v21, v21, -0x1

    aget-object v21, v18, v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, ", "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    iget v0, v6, Lcom/vkcoffee/android/attachments/DocumentAttachment;->size:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v22, v0

    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    move-wide/from16 v0, v22

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Lcom/vkcoffee/android/Global;->langFileSize(JLandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v6, v1}, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->createPendingDocumentView(Lcom/vkcoffee/android/attachments/DocumentAttachment;Ljava/lang/String;)Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2, v12}, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->addAttachView(Landroid/view/View;Lcom/vkcoffee/android/attachments/Attachment;I)V

    goto/16 :goto_2

    .line 408
    :cond_18
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v21, v0

    add-int/lit8 v21, v21, -0x1

    aget-object v21, v18, v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, ", "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    iget v0, v6, Lcom/vkcoffee/android/attachments/DocumentAttachment;->size:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v22, v0

    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    move-wide/from16 v0, v22

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Lcom/vkcoffee/android/Global;->langFileSize(JLandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v6, v1}, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->createDocumentView(Lcom/vkcoffee/android/attachments/DocumentAttachment;Ljava/lang/String;)Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2, v12}, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->addAttachView(Landroid/view/View;Lcom/vkcoffee/android/attachments/Attachment;I)V

    goto/16 :goto_2

    .line 411
    :cond_19
    const v20, 0x7f020129

    iget-object v0, v6, Lcom/vkcoffee/android/attachments/DocumentAttachment;->title:Ljava/lang/String;

    move-object/from16 v21, v0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v23, v0

    add-int/lit8 v23, v23, -0x1

    aget-object v23, v18, v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, ", "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    iget v0, v6, Lcom/vkcoffee/android/attachments/DocumentAttachment;->size:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v24, v0

    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    move-wide/from16 v0, v24

    move-object/from16 v2, v23

    invoke-static {v0, v1, v2}, Lcom/vkcoffee/android/Global;->langFileSize(JLandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/vkcoffee/android/attachments/PendingDocumentAttachment;

    move/from16 v23, v0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    move/from16 v4, v23

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->createImagelessView(ILjava/lang/String;Ljava/lang/String;Z)Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2, v12}, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->addAttachView(Landroid/view/View;Lcom/vkcoffee/android/attachments/Attachment;I)V

    goto/16 :goto_2

    .line 413
    .end local v6    # "a":Lcom/vkcoffee/android/attachments/DocumentAttachment;
    .end local v18    # "sp":[Ljava/lang/String;
    :cond_1a
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/vkcoffee/android/attachments/GeoAttachment;

    move/from16 v20, v0

    if-eqz v20, :cond_1b

    move-object/from16 v20, p1

    .line 414
    check-cast v20, Lcom/vkcoffee/android/attachments/GeoAttachment;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->createLocationView(Lcom/vkcoffee/android/attachments/GeoAttachment;)Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2, v12}, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->addAttachView(Landroid/view/View;Lcom/vkcoffee/android/attachments/Attachment;I)V

    goto/16 :goto_2

    .line 415
    :cond_1b
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/vkcoffee/android/attachments/FwdMessagesAttachment;

    move/from16 v20, v0

    if-eqz v20, :cond_1c

    move-object/from16 v20, p1

    .line 416
    check-cast v20, Lcom/vkcoffee/android/attachments/FwdMessagesAttachment;

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/vkcoffee/android/attachments/FwdMessagesAttachment;->msgs:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->createFwdView(I)Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2, v12}, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->addAttachView(Landroid/view/View;Lcom/vkcoffee/android/attachments/Attachment;I)V

    goto/16 :goto_2

    .line 417
    :cond_1c
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/vkcoffee/android/attachments/PostAttachment;

    move/from16 v20, v0

    if-eqz v20, :cond_1d

    move-object/from16 v20, p1

    .line 418
    check-cast v20, Lcom/vkcoffee/android/attachments/PostAttachment;

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/vkcoffee/android/attachments/PostAttachment;->post:Lcom/vkcoffee/android/NewsEntry;

    move-object/from16 v17, v0

    .line 419
    .local v17, "post":Lcom/vkcoffee/android/NewsEntry;
    const v20, 0x7f020134

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/vkcoffee/android/NewsEntry;->displayablePreviewText:Ljava/lang/CharSequence;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v21

    const-string/jumbo v22, ""

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    move/from16 v4, v23

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->createImagelessView(ILjava/lang/String;Ljava/lang/String;Z)Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2, v12}, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->addAttachView(Landroid/view/View;Lcom/vkcoffee/android/attachments/Attachment;I)V

    goto/16 :goto_2

    .line 420
    .end local v17    # "post":Lcom/vkcoffee/android/NewsEntry;
    :cond_1d
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/vkcoffee/android/attachments/LinkAttachment;

    move/from16 v20, v0

    if-eqz v20, :cond_1e

    move-object/from16 v13, p1

    .line 421
    check-cast v13, Lcom/vkcoffee/android/attachments/LinkAttachment;

    .line 422
    .local v13, "la":Lcom/vkcoffee/android/attachments/LinkAttachment;
    const v20, 0x7f02012a

    iget-object v0, v13, Lcom/vkcoffee/android/attachments/LinkAttachment;->url:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string/jumbo v22, "http://"

    const-string/jumbo v23, ""

    invoke-virtual/range {v21 .. v23}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v21

    const-string/jumbo v22, "https://"

    const-string/jumbo v23, ""

    invoke-virtual/range {v21 .. v23}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v21

    iget-object v0, v13, Lcom/vkcoffee/android/attachments/LinkAttachment;->title:Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    move/from16 v4, v23

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->createImagelessView(ILjava/lang/String;Ljava/lang/String;Z)Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2, v12}, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->addAttachView(Landroid/view/View;Lcom/vkcoffee/android/attachments/Attachment;I)V

    goto/16 :goto_2

    .line 423
    .end local v13    # "la":Lcom/vkcoffee/android/attachments/LinkAttachment;
    :cond_1e
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/vkcoffee/android/attachments/PollAttachment;

    move/from16 v20, v0

    if-eqz v20, :cond_1f

    move-object/from16 v13, p1

    .line 424
    check-cast v13, Lcom/vkcoffee/android/attachments/PollAttachment;

    .line 425
    .local v13, "la":Lcom/vkcoffee/android/attachments/PollAttachment;
    const v20, 0x7f020133

    iget-object v0, v13, Lcom/vkcoffee/android/attachments/PollAttachment;->question:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string/jumbo v22, ""

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    move/from16 v4, v23

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->createImagelessView(ILjava/lang/String;Ljava/lang/String;Z)Landroid/view/View;

    move-result-object v9

    .line 426
    .local v9, "av":Landroid/view/View;
    new-instance v20, Lcom/vkcoffee/android/ui/AttachmentsEditorView$6;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v13}, Lcom/vkcoffee/android/ui/AttachmentsEditorView$6;-><init>(Lcom/vkcoffee/android/ui/AttachmentsEditorView;Lcom/vkcoffee/android/attachments/PollAttachment;)V

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 435
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v9, v1, v12}, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->addAttachView(Landroid/view/View;Lcom/vkcoffee/android/attachments/Attachment;I)V

    goto/16 :goto_2

    .line 437
    .end local v9    # "av":Landroid/view/View;
    .end local v13    # "la":Lcom/vkcoffee/android/attachments/PollAttachment;
    :cond_1f
    const-string/jumbo v20, "vk"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "Unknown attachment: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/vkcoffee/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 469
    iget-object v0, p0, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->content:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 470
    iget-object v0, p0, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 471
    iget-object v0, p0, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->callback:Lcom/vkcoffee/android/ui/AttachmentsEditorView$Callback;

    if-eqz v0, :cond_0

    .line 472
    iget-object v0, p0, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->callback:Lcom/vkcoffee/android/ui/AttachmentsEditorView$Callback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/vkcoffee/android/ui/AttachmentsEditorView$Callback;->onAttachmentRemoved(Lcom/vkcoffee/android/attachments/Attachment;)V

    .line 474
    :cond_0
    return-void
.end method

.method public containsGeoAttachment()Z
    .locals 3

    .prologue
    .line 520
    iget-object v1, p0, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/attachments/Attachment;

    .line 521
    .local v0, "att":Lcom/vkcoffee/android/attachments/Attachment;
    instance-of v2, v0, Lcom/vkcoffee/android/attachments/GeoAttachment;

    if-eqz v2, :cond_0

    .line 522
    const/4 v1, 0x1

    .line 525
    .end local v0    # "att":Lcom/vkcoffee/android/attachments/Attachment;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    .line 909
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->lastTouchX:F

    .line 910
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->lastTouchY:F

    .line 911
    iget-object v1, p0, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->dragView:Landroid/view/View;

    if-eqz v1, :cond_3

    .line 912
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 913
    invoke-direct {p0}, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->updateDragPosition()V

    .line 921
    :cond_0
    :goto_0
    return v0

    .line 914
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-eq v1, v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 915
    :cond_2
    invoke-direct {p0}, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->resetTransitionAnims()V

    .line 916
    iget-object v1, p0, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->dragView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 917
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->dragView:Landroid/view/View;

    goto :goto_0

    .line 921
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public getAll()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/attachments/Attachment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 492
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 493
    .local v0, "att":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/attachments/Attachment;>;"
    iget-object v1, p0, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 494
    return-object v0
.end method

.method public getCount()I
    .locals 4

    .prologue
    .line 455
    const/4 v1, 0x0

    .line 456
    .local v1, "size":I
    iget-object v2, p0, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/attachments/Attachment;

    .line 457
    .local v0, "att":Lcom/vkcoffee/android/attachments/Attachment;
    instance-of v3, v0, Lcom/vkcoffee/android/attachments/GeoAttachment;

    if-nez v3, :cond_0

    instance-of v3, v0, Lcom/vkcoffee/android/attachments/FwdMessagesAttachment;

    if-nez v3, :cond_0

    .line 458
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 461
    .end local v0    # "att":Lcom/vkcoffee/android/attachments/Attachment;
    :cond_1
    return v1
.end method

.method public getRealCount()I
    .locals 1

    .prologue
    .line 465
    iget-object v0, p0, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public isUploading()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 477
    iget-object v2, p0, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/attachments/Attachment;

    .line 478
    .local v0, "att":Lcom/vkcoffee/android/attachments/Attachment;
    instance-of v3, v0, Lcom/vkcoffee/android/attachments/PendingPhotoAttachment;

    if-eqz v3, :cond_2

    .line 488
    .end local v0    # "att":Lcom/vkcoffee/android/attachments/Attachment;
    :cond_1
    :goto_0
    return v1

    .line 481
    .restart local v0    # "att":Lcom/vkcoffee/android/attachments/Attachment;
    :cond_2
    instance-of v3, v0, Lcom/vkcoffee/android/attachments/PendingDocumentAttachment;

    if-nez v3, :cond_1

    .line 484
    instance-of v3, v0, Lcom/vkcoffee/android/attachments/PendingVideoAttachment;

    if-eqz v3, :cond_0

    goto :goto_0

    .line 488
    .end local v0    # "att":Lcom/vkcoffee/android/attachments/Attachment;
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method synthetic lambda$new$217(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 71
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/attachments/Attachment;

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->remove(Lcom/vkcoffee/android/attachments/Attachment;)V

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 5

    .prologue
    .line 308
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onAttachedToWindow()V

    .line 309
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 310
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "com.vkcoffee.android.UPLOAD_PROGRESS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 311
    const-string/jumbo v1, "com.vkcoffee.android.UPLOAD_STARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 312
    const-string/jumbo v1, "com.vkcoffee.android.UPLOAD_DONE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 313
    const-string/jumbo v1, "com.vkcoffee.android.UPLOAD_FAILED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 314
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->receiver:Landroid/content/BroadcastReceiver;

    const-string/jumbo v3, "com.vkcoffee.android.permission.ACCESS_DATA"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 315
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 318
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onDetachedFromWindow()V

    .line 320
    :try_start_0
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 323
    :goto_0
    return-void

    .line 321
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public remove(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 498
    iget-object v1, p0, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/attachments/Attachment;

    .line 499
    .local v0, "att":Lcom/vkcoffee/android/attachments/Attachment;
    iget-object v1, p0, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->content:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 500
    iget-object v1, p0, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->callback:Lcom/vkcoffee/android/ui/AttachmentsEditorView$Callback;

    if-eqz v1, :cond_0

    .line 501
    iget-object v1, p0, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->callback:Lcom/vkcoffee/android/ui/AttachmentsEditorView$Callback;

    invoke-interface {v1, v0}, Lcom/vkcoffee/android/ui/AttachmentsEditorView$Callback;->onAttachmentRemoved(Lcom/vkcoffee/android/attachments/Attachment;)V

    .line 503
    :cond_0
    instance-of v1, v0, Lcom/vkcoffee/android/attachments/PendingPhotoAttachment;

    if-eqz v1, :cond_1

    move-object v1, v0

    .line 504
    check-cast v1, Lcom/vkcoffee/android/attachments/PendingPhotoAttachment;

    iget v1, v1, Lcom/vkcoffee/android/attachments/PendingPhotoAttachment;->id:I

    invoke-static {v1}, Lcom/vkcoffee/android/upload/Upload;->cancel(I)V

    .line 506
    :cond_1
    instance-of v1, v0, Lcom/vkcoffee/android/attachments/PendingDocumentAttachment;

    if-eqz v1, :cond_2

    move-object v1, v0

    .line 507
    check-cast v1, Lcom/vkcoffee/android/attachments/PendingDocumentAttachment;

    iget v1, v1, Lcom/vkcoffee/android/attachments/PendingDocumentAttachment;->did:I

    invoke-static {v1}, Lcom/vkcoffee/android/upload/Upload;->cancel(I)V

    .line 509
    :cond_2
    instance-of v1, v0, Lcom/vkcoffee/android/attachments/PendingVideoAttachment;

    if-eqz v1, :cond_3

    .line 510
    check-cast v0, Lcom/vkcoffee/android/attachments/PendingVideoAttachment;

    .end local v0    # "att":Lcom/vkcoffee/android/attachments/Attachment;
    iget v1, v0, Lcom/vkcoffee/android/attachments/PendingVideoAttachment;->vid:I

    invoke-static {v1}, Lcom/vkcoffee/android/upload/Upload;->cancel(I)V

    .line 512
    :cond_3
    return-void
.end method

.method public remove(Lcom/vkcoffee/android/attachments/Attachment;)V
    .locals 3
    .param p1, "a"    # Lcom/vkcoffee/android/attachments/Attachment;

    .prologue
    .line 442
    const/4 v1, -0x1

    .line 443
    .local v1, "index":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 444
    iget-object v2, p0, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_2

    .line 445
    move v1, v0

    .line 449
    :cond_0
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 450
    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->remove(I)V

    .line 452
    :cond_1
    return-void

    .line 443
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public removeWithoutCallback(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 515
    iget-object v0, p0, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->content:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 516
    iget-object v0, p0, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 517
    return-void
.end method

.method public setCallback(Lcom/vkcoffee/android/ui/AttachmentsEditorView$Callback;)V
    .locals 0
    .param p1, "c"    # Lcom/vkcoffee/android/ui/AttachmentsEditorView$Callback;

    .prologue
    .line 326
    iput-object p1, p0, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->callback:Lcom/vkcoffee/android/ui/AttachmentsEditorView$Callback;

    .line 327
    return-void
.end method
