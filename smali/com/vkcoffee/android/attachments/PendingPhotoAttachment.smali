.class public Lcom/vkcoffee/android/attachments/PendingPhotoAttachment;
.super Lcom/vkcoffee/android/attachments/Attachment;
.source "PendingPhotoAttachment.java"

# interfaces
.implements Lcom/vkcoffee/android/attachments/ThumbAttachment;
.implements Lcom/vkcoffee/android/attachments/PendingAttachment;


# static fields
.field public static final CREATOR:Lcom/vkcoffee/android/utils/Serializer$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vkcoffee/android/utils/Serializer$Creator",
            "<",
            "Lcom/vkcoffee/android/attachments/PendingPhotoAttachment;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private breakAfter:Z

.field private displayH:I

.field private displayW:I

.field public fileUri:Ljava/lang/String;

.field private floating:Z

.field public h:I

.field public id:I

.field private paddingAfter:Z

.field public w:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 134
    new-instance v0, Lcom/vkcoffee/android/attachments/PendingPhotoAttachment$2;

    invoke-direct {v0}, Lcom/vkcoffee/android/attachments/PendingPhotoAttachment$2;-><init>()V

    sput-object v0, Lcom/vkcoffee/android/attachments/PendingPhotoAttachment;->CREATOR:Lcom/vkcoffee/android/utils/Serializer$Creator;

    return-void
.end method

.method private constructor <init>(Lcom/vkcoffee/android/utils/Serializer;)V
    .locals 1
    .param p1, "in"    # Lcom/vkcoffee/android/utils/Serializer;

    .prologue
    .line 127
    invoke-direct {p0}, Lcom/vkcoffee/android/attachments/Attachment;-><init>()V

    .line 128
    invoke-virtual {p1}, Lcom/vkcoffee/android/utils/Serializer;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/attachments/PendingPhotoAttachment;->fileUri:Ljava/lang/String;

    .line 129
    invoke-virtual {p1}, Lcom/vkcoffee/android/utils/Serializer;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/attachments/PendingPhotoAttachment;->id:I

    .line 130
    invoke-virtual {p1}, Lcom/vkcoffee/android/utils/Serializer;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/attachments/PendingPhotoAttachment;->w:I

    .line 131
    invoke-virtual {p1}, Lcom/vkcoffee/android/utils/Serializer;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/attachments/PendingPhotoAttachment;->h:I

    .line 132
    return-void
.end method

.method synthetic constructor <init>(Lcom/vkcoffee/android/utils/Serializer;Lcom/vkcoffee/android/attachments/PendingPhotoAttachment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/vkcoffee/android/utils/Serializer;
    .param p2, "x1"    # Lcom/vkcoffee/android/attachments/PendingPhotoAttachment$1;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/attachments/PendingPhotoAttachment;-><init>(Lcom/vkcoffee/android/utils/Serializer;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "file"    # Ljava/lang/String;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/vkcoffee/android/attachments/Attachment;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/vkcoffee/android/attachments/PendingPhotoAttachment;->fileUri:Ljava/lang/String;

    .line 27
    invoke-static {}, Lcom/vkcoffee/android/upload/Upload;->getNewID()I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/attachments/PendingPhotoAttachment;->id:I

    .line 28
    invoke-direct {p0}, Lcom/vkcoffee/android/attachments/PendingPhotoAttachment;->fillSize()V

    .line 29
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "id"    # I

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/vkcoffee/android/attachments/Attachment;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/vkcoffee/android/attachments/PendingPhotoAttachment;->fileUri:Ljava/lang/String;

    .line 33
    iput p2, p0, Lcom/vkcoffee/android/attachments/PendingPhotoAttachment;->id:I

    .line 34
    invoke-direct {p0}, Lcom/vkcoffee/android/attachments/PendingPhotoAttachment;->fillSize()V

    .line 35
    return-void
.end method

.method static synthetic access$000(Lcom/vkcoffee/android/attachments/PendingPhotoAttachment;)I
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/attachments/PendingPhotoAttachment;

    .prologue
    .line 17
    iget v0, p0, Lcom/vkcoffee/android/attachments/PendingPhotoAttachment;->displayW:I

    return v0
.end method

.method static synthetic access$100(Lcom/vkcoffee/android/attachments/PendingPhotoAttachment;)I
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/attachments/PendingPhotoAttachment;

    .prologue
    .line 17
    iget v0, p0, Lcom/vkcoffee/android/attachments/PendingPhotoAttachment;->displayH:I

    return v0
.end method

.method private fillSize()V
    .locals 5

    .prologue
    .line 39
    :try_start_0
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 40
    .local v1, "opts":Landroid/graphics/BitmapFactory$Options;
    const/4 v3, 0x1

    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 41
    iget-object v3, p0, Lcom/vkcoffee/android/attachments/PendingPhotoAttachment;->fileUri:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 42
    .local v2, "u":Landroid/net/Uri;
    sget-object v3, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "r"

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 43
    .local v0, "fd":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4, v1}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 44
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 45
    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v3, p0, Lcom/vkcoffee/android/attachments/PendingPhotoAttachment;->w:I

    .line 46
    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v3, p0, Lcom/vkcoffee/android/attachments/PendingPhotoAttachment;->h:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    .end local v0    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v1    # "opts":Landroid/graphics/BitmapFactory$Options;
    .end local v2    # "u":Landroid/net/Uri;
    :goto_0
    return-void

    .line 47
    :catch_0
    move-exception v3

    goto :goto_0
.end method


# virtual methods
.method public getFullView(Landroid/content/Context;)Landroid/view/View;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    .line 53
    new-instance v1, Lcom/vkcoffee/android/attachments/PendingPhotoAttachment$1;

    invoke-direct {v1, p0, p1}, Lcom/vkcoffee/android/attachments/PendingPhotoAttachment$1;-><init>(Lcom/vkcoffee/android/attachments/PendingPhotoAttachment;Landroid/content/Context;)V

    .line 58
    .local v1, "v":Landroid/view/View;
    const v3, 0x7f020271

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 59
    new-instance v0, Lcom/vkcoffee/android/ui/FlowLayout$LayoutParams;

    invoke-static {v2}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v3

    iget-boolean v4, p0, Lcom/vkcoffee/android/attachments/PendingPhotoAttachment;->paddingAfter:Z

    if-eqz v4, :cond_0

    const/high16 v2, 0x41200000    # 10.0f

    :cond_0
    invoke-static {v2}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v2

    invoke-direct {v0, v3, v2}, Lcom/vkcoffee/android/ui/FlowLayout$LayoutParams;-><init>(II)V

    .line 60
    .local v0, "params":Lcom/vkcoffee/android/ui/FlowLayout$LayoutParams;
    iget-boolean v2, p0, Lcom/vkcoffee/android/attachments/PendingPhotoAttachment;->breakAfter:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/vkcoffee/android/attachments/PendingPhotoAttachment;->floating:Z

    if-eqz v2, :cond_2

    .line 61
    :cond_1
    iget-boolean v2, p0, Lcom/vkcoffee/android/attachments/PendingPhotoAttachment;->breakAfter:Z

    iput-boolean v2, v0, Lcom/vkcoffee/android/ui/FlowLayout$LayoutParams;->breakAfter:Z

    .line 62
    iget-boolean v2, p0, Lcom/vkcoffee/android/attachments/PendingPhotoAttachment;->floating:Z

    iput-boolean v2, v0, Lcom/vkcoffee/android/ui/FlowLayout$LayoutParams;->floating:Z

    .line 64
    :cond_2
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 65
    return-object v1
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Lcom/vkcoffee/android/attachments/PendingPhotoAttachment;->h:I

    return v0
.end method

.method public getRatio()F
    .locals 2

    .prologue
    .line 75
    iget v0, p0, Lcom/vkcoffee/android/attachments/PendingPhotoAttachment;->w:I

    int-to-float v0, v0

    iget v1, p0, Lcom/vkcoffee/android/attachments/PendingPhotoAttachment;->h:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public getThumbURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUploadId()I
    .locals 1

    .prologue
    .line 148
    iget v0, p0, Lcom/vkcoffee/android/attachments/PendingPhotoAttachment;->id:I

    return v0
.end method

.method public getViewForList(Landroid/content/Context;Landroid/view/View;)Landroid/view/View;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "reuse"    # Landroid/view/View;

    .prologue
    .line 70
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/attachments/PendingPhotoAttachment;->getFullView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lcom/vkcoffee/android/attachments/PendingPhotoAttachment;->w:I

    return v0
.end method

.method public getWidth(C)I
    .locals 1
    .param p1, "size"    # C

    .prologue
    .line 103
    iget v0, p0, Lcom/vkcoffee/android/attachments/PendingPhotoAttachment;->w:I

    return v0
.end method

.method public overrideLayoutParams()Lcom/vkcoffee/android/ui/FlowLayout$LayoutParams;
    .locals 1

    .prologue
    .line 116
    const/4 v0, 0x0

    return-object v0
.end method

.method public serializeTo(Lcom/vkcoffee/android/utils/Serializer;)V
    .locals 1
    .param p1, "s"    # Lcom/vkcoffee/android/utils/Serializer;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/vkcoffee/android/attachments/PendingPhotoAttachment;->fileUri:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/utils/Serializer;->writeString(Ljava/lang/String;)V

    .line 122
    iget v0, p0, Lcom/vkcoffee/android/attachments/PendingPhotoAttachment;->id:I

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/utils/Serializer;->writeInt(I)V

    .line 123
    iget v0, p0, Lcom/vkcoffee/android/attachments/PendingPhotoAttachment;->w:I

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/utils/Serializer;->writeInt(I)V

    .line 124
    iget v0, p0, Lcom/vkcoffee/android/attachments/PendingPhotoAttachment;->h:I

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/utils/Serializer;->writeInt(I)V

    .line 125
    return-void
.end method

.method public setViewSize(FFZZ)V
    .locals 1
    .param p1, "width"    # F
    .param p2, "height"    # F
    .param p3, "breakAfter"    # Z
    .param p4, "floating"    # Z

    .prologue
    .line 80
    float-to-int v0, p1

    iput v0, p0, Lcom/vkcoffee/android/attachments/PendingPhotoAttachment;->displayW:I

    .line 81
    float-to-int v0, p2

    iput v0, p0, Lcom/vkcoffee/android/attachments/PendingPhotoAttachment;->displayH:I

    .line 82
    iput-boolean p3, p0, Lcom/vkcoffee/android/attachments/PendingPhotoAttachment;->breakAfter:Z

    .line 83
    iput-boolean p4, p0, Lcom/vkcoffee/android/attachments/PendingPhotoAttachment;->floating:Z

    .line 84
    return-void
.end method
