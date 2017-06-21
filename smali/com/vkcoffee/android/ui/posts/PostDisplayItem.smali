.class public abstract Lcom/vkcoffee/android/ui/posts/PostDisplayItem;
.super Ljava/lang/Object;
.source "PostDisplayItem.java"


# static fields
.field public static final TYPE_ATTACH_CONTAINER:I = 0x9

.field public static final TYPE_AUDIO_ATTACH:I = 0x6

.field public static final TYPE_BIG_VIDEO:I = 0xb

.field public static final TYPE_BUTTONS:I = 0xa

.field public static final TYPE_COMMENT:I = 0x4

.field public static final TYPE_COMMON_ATTACH:I = 0x7

.field public static final TYPE_FOOTER:I = 0x1

.field public static final TYPE_FRIENDS_RECOMM:I = 0xd

.field public static final TYPE_HEADER:I = 0x0

.field public static final TYPE_HEADER_AD:I = 0xc

.field public static final TYPE_PADDING:I = 0x10

.field public static final TYPE_REPOST:I = 0x3

.field public static final TYPE_SHIT_BLOCK:I = 0xe

.field public static final TYPE_SIGNATURE:I = 0x8

.field public static final TYPE_TAG_CONFIRMATION:I = 0xf

.field public static final TYPE_TEXT:I = 0x2

.field public static final TYPE_THUMBS_BLOCK:I = 0x5

.field public static final VIEW_TYPE_COUNT:I = 0x11


# instance fields
.field public bgType:I

.field public clickable:Z

.field public postID:I

.field public postOwnerID:I


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "_postID"    # I
    .param p2, "_postOwnerID"    # I

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkcoffee/android/ui/posts/PostDisplayItem;->clickable:Z

    .line 85
    iput p1, p0, Lcom/vkcoffee/android/ui/posts/PostDisplayItem;->postID:I

    .line 86
    iput p2, p0, Lcom/vkcoffee/android/ui/posts/PostDisplayItem;->postOwnerID:I

    .line 87
    return-void
.end method


# virtual methods
.method public abstract bindView(Landroid/view/View;)V
.end method

.method public abstract getImageCount()I
.end method

.method public abstract getImageURL(I)Ljava/lang/String;
.end method

.method public abstract getType()I
.end method

.method public abstract setImage(ILandroid/view/View;Landroid/graphics/Bitmap;Z)V
.end method
