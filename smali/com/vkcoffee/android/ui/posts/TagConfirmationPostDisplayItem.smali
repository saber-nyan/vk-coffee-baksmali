.class public Lcom/vkcoffee/android/ui/posts/TagConfirmationPostDisplayItem;
.super Lcom/vkcoffee/android/ui/posts/PostDisplayItem;
.source "TagConfirmationPostDisplayItem.java"


# instance fields
.field private onRemove:Ljava/lang/Runnable;

.field private profile:Lcom/vkcoffee/android/UserProfile;

.field private tagID:I


# direct methods
.method public constructor <init>(IILcom/vkcoffee/android/UserProfile;ILjava/lang/Runnable;)V
    .locals 0
    .param p1, "_postID"    # I
    .param p2, "_postOwnerID"    # I
    .param p3, "profile"    # Lcom/vkcoffee/android/UserProfile;
    .param p4, "tagID"    # I
    .param p5, "removeThisItem"    # Ljava/lang/Runnable;

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/vkcoffee/android/ui/posts/PostDisplayItem;-><init>(II)V

    .line 33
    iput-object p3, p0, Lcom/vkcoffee/android/ui/posts/TagConfirmationPostDisplayItem;->profile:Lcom/vkcoffee/android/UserProfile;

    .line 34
    iput p4, p0, Lcom/vkcoffee/android/ui/posts/TagConfirmationPostDisplayItem;->tagID:I

    .line 35
    iput-object p5, p0, Lcom/vkcoffee/android/ui/posts/TagConfirmationPostDisplayItem;->onRemove:Ljava/lang/Runnable;

    .line 36
    return-void
.end method

.method static synthetic access$000(Lcom/vkcoffee/android/ui/posts/TagConfirmationPostDisplayItem;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/posts/TagConfirmationPostDisplayItem;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/ui/posts/TagConfirmationPostDisplayItem;->broadcastRemoval(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$100(Lcom/vkcoffee/android/ui/posts/TagConfirmationPostDisplayItem;)I
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/posts/TagConfirmationPostDisplayItem;

    .prologue
    .line 25
    iget v0, p0, Lcom/vkcoffee/android/ui/posts/TagConfirmationPostDisplayItem;->tagID:I

    return v0
.end method

.method private broadcastRemoval(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 92
    iget-object v1, p0, Lcom/vkcoffee/android/ui/posts/TagConfirmationPostDisplayItem;->onRemove:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 93
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.vkcoffee.android.PHOTO_REMOVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 94
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "aid"

    const/16 v2, -0x2328

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 95
    const-string/jumbo v1, "pid"

    iget v2, p0, Lcom/vkcoffee/android/ui/posts/TagConfirmationPostDisplayItem;->postID:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 96
    const-string/jumbo v1, "com.vkcoffee.android.permission.ACCESS_DATA"

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 97
    return-void
.end method

.method public static createView(Landroid/content/Context;)Landroid/view/View;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 114
    const v0, 0x7f030137

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static decreasePhotosCounter()V
    .locals 1

    .prologue
    .line 87
    invoke-static {}, Lcom/vkcoffee/android/LongPollService;->getNumPhotosMarks()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Lcom/vkcoffee/android/LongPollService;->setNumPhotosMarks(I)V

    .line 88
    invoke-static {}, Lcom/vkcoffee/android/LongPollService;->notifyCountersChanged()V

    .line 89
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x0

    .line 50
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v2, p0, Lcom/vkcoffee/android/ui/posts/TagConfirmationPostDisplayItem;->profile:Lcom/vkcoffee/android/UserProfile;

    iget-boolean v2, v2, Lcom/vkcoffee/android/UserProfile;->f:Z

    if-eqz v2, :cond_0

    const v2, 0x7f08057c

    :goto_0
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[id"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/vkcoffee/android/ui/posts/TagConfirmationPostDisplayItem;->profile:Lcom/vkcoffee/android/UserProfile;

    iget v6, v6, Lcom/vkcoffee/android/UserProfile;->uid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "|"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/vkcoffee/android/ui/posts/TagConfirmationPostDisplayItem;->profile:Lcom/vkcoffee/android/UserProfile;

    iget-object v6, v6, Lcom/vkcoffee/android/UserProfile;->fullName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/vkcoffee/android/LinkParser;->parseLinks(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Landroid/text/Spannable;

    .line 51
    .local v1, "ss":Landroid/text/Spannable;
    invoke-interface {v1}, Landroid/text/Spannable;->length()I

    move-result v2

    const-class v3, Lcom/vkcoffee/android/LinkSpan;

    invoke-interface {v1, v7, v2, v3}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vkcoffee/android/LinkSpan;

    .line 52
    .local v0, "spans":[Lcom/vkcoffee/android/LinkSpan;
    new-instance v2, Lcom/vkcoffee/android/ui/Font$TypefaceSpan;

    sget-object v3, Lcom/vkcoffee/android/ui/Font;->Medium:Lcom/vkcoffee/android/ui/Font;

    invoke-direct {v2, v3}, Lcom/vkcoffee/android/ui/Font$TypefaceSpan;-><init>(Lcom/vkcoffee/android/ui/Font;)V

    aget-object v3, v0, v7

    invoke-interface {v1, v3}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    aget-object v4, v0, v7

    invoke-interface {v1, v4}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v4

    invoke-interface {v1, v2, v3, v4, v7}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 53
    const v2, 0x7f100125

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    const v2, 0x7f100362

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/vkcoffee/android/ui/posts/TagConfirmationPostDisplayItem$1;

    invoke-direct {v3, p0}, Lcom/vkcoffee/android/ui/posts/TagConfirmationPostDisplayItem$1;-><init>(Lcom/vkcoffee/android/ui/posts/TagConfirmationPostDisplayItem;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    const v2, 0x7f100363

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/vkcoffee/android/ui/posts/TagConfirmationPostDisplayItem$2;

    invoke-direct {v3, p0}, Lcom/vkcoffee/android/ui/posts/TagConfirmationPostDisplayItem$2;-><init>(Lcom/vkcoffee/android/ui/posts/TagConfirmationPostDisplayItem;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    return-void

    .line 50
    .end local v0    # "spans":[Lcom/vkcoffee/android/LinkSpan;
    .end local v1    # "ss":Landroid/text/Spannable;
    :cond_0
    const v2, 0x7f08057d

    goto/16 :goto_0
.end method

.method public getImageCount()I
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x1

    return v0
.end method

.method public getImageURL(I)Ljava/lang/String;
    .locals 1
    .param p1, "image"    # I

    .prologue
    .line 101
    iget-object v0, p0, Lcom/vkcoffee/android/ui/posts/TagConfirmationPostDisplayItem;->profile:Lcom/vkcoffee/android/UserProfile;

    iget-object v0, v0, Lcom/vkcoffee/android/UserProfile;->photo:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 40
    const/16 v0, 0xf

    return v0
.end method

.method public setImage(ILandroid/view/View;Landroid/graphics/Bitmap;Z)V
    .locals 2
    .param p1, "image"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "bmp"    # Landroid/graphics/Bitmap;
    .param p4, "fromCache"    # Z

    .prologue
    const v0, 0x7f100146

    .line 106
    if-eqz p3, :cond_0

    .line 107
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 111
    :goto_0
    return-void

    .line 109
    :cond_0
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f0202c4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method
