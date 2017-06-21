.class public Lcom/vkcoffee/android/ui/WriteBar;
.super Landroid/widget/LinearLayout;
.source "WriteBar.java"

# interfaces
.implements Lcom/vkcoffee/android/stickers/KeyboardPopup$OnVisibilityChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/ui/WriteBar$GraffitiSender;,
        Lcom/vkcoffee/android/ui/WriteBar$MenuItem;
    }
.end annotation


# static fields
.field private static final ATTACHMENTS_RESULT:I = 0x271a

.field private static final AUDIO_RESULT:I = 0x2713

.field private static final DOC_RESULT:I = 0x2714

.field private static final LOCATION_RESULT:I = 0x2715

.field private static final PHOTO_RESULT:I = 0x2711

.field private static final VIDEO_EXISTING_RESULT:I = 0x2716

.field private static final VIDEO_NEW_RESULT:I = 0x2717

.field private static final VIDEO_RESULT:I = 0x2712


# instance fields
.field private allowNew:Z

.field private attEditor:Lcom/vkcoffee/android/ui/AttachmentsEditorView;

.field private attachDivider:Landroid/view/View;

.field private buttonSend:Landroid/view/View;

.field private fragment:Landroid/app/Fragment;

.field public giftAllowed:Z

.field public giftUser:Lcom/vkcoffee/android/UserProfile;

.field private graffitiPhoto:Ljava/lang/String;

.field private graffitiSender:Lcom/vkcoffee/android/ui/WriteBar$GraffitiSender;

.field private graffitiTitle:Ljava/lang/String;

.field public isChat:Z

.field private mAutoSuggestPopup:Lcom/vkcoffee/android/stickers/AutoSuggestStickersPopupWindow;

.field private mAutoSuggestPopupListener:Lcom/vkcoffee/android/stickers/StickersView$Listener;

.field private mKeyboardPopup:Lcom/vkcoffee/android/stickers/KeyboardPopup;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mapAllowed:Z

.field private maxAtts:I

.field private onUplDone:Ljava/lang/Runnable;

.field private onUplFail:Ljava/lang/Runnable;

.field private writeBarAttach:Landroid/view/View;

.field private writeBarEmoji:Landroid/widget/ImageView;

.field private writeBarEmojiNew:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 126
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 96
    const/16 v0, 0xa

    iput v0, p0, Lcom/vkcoffee/android/ui/WriteBar;->maxAtts:I

    .line 97
    iput-boolean v2, p0, Lcom/vkcoffee/android/ui/WriteBar;->mapAllowed:Z

    .line 98
    iput-boolean v1, p0, Lcom/vkcoffee/android/ui/WriteBar;->isChat:Z

    .line 99
    iput-boolean v1, p0, Lcom/vkcoffee/android/ui/WriteBar;->giftAllowed:Z

    .line 105
    iput-boolean v2, p0, Lcom/vkcoffee/android/ui/WriteBar;->allowNew:Z

    .line 113
    new-instance v0, Lcom/vkcoffee/android/ui/WriteBar$1;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/ui/WriteBar$1;-><init>(Lcom/vkcoffee/android/ui/WriteBar;)V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/WriteBar;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 127
    invoke-direct {p0}, Lcom/vkcoffee/android/ui/WriteBar;->init()V

    .line 128
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 131
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 96
    const/16 v0, 0xa

    iput v0, p0, Lcom/vkcoffee/android/ui/WriteBar;->maxAtts:I

    .line 97
    iput-boolean v2, p0, Lcom/vkcoffee/android/ui/WriteBar;->mapAllowed:Z

    .line 98
    iput-boolean v1, p0, Lcom/vkcoffee/android/ui/WriteBar;->isChat:Z

    .line 99
    iput-boolean v1, p0, Lcom/vkcoffee/android/ui/WriteBar;->giftAllowed:Z

    .line 105
    iput-boolean v2, p0, Lcom/vkcoffee/android/ui/WriteBar;->allowNew:Z

    .line 113
    new-instance v0, Lcom/vkcoffee/android/ui/WriteBar$1;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/ui/WriteBar$1;-><init>(Lcom/vkcoffee/android/ui/WriteBar;)V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/WriteBar;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 132
    invoke-direct {p0}, Lcom/vkcoffee/android/ui/WriteBar;->init()V

    .line 133
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 136
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 96
    const/16 v0, 0xa

    iput v0, p0, Lcom/vkcoffee/android/ui/WriteBar;->maxAtts:I

    .line 97
    iput-boolean v2, p0, Lcom/vkcoffee/android/ui/WriteBar;->mapAllowed:Z

    .line 98
    iput-boolean v1, p0, Lcom/vkcoffee/android/ui/WriteBar;->isChat:Z

    .line 99
    iput-boolean v1, p0, Lcom/vkcoffee/android/ui/WriteBar;->giftAllowed:Z

    .line 105
    iput-boolean v2, p0, Lcom/vkcoffee/android/ui/WriteBar;->allowNew:Z

    .line 113
    new-instance v0, Lcom/vkcoffee/android/ui/WriteBar$1;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/ui/WriteBar$1;-><init>(Lcom/vkcoffee/android/ui/WriteBar;)V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/WriteBar;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 137
    invoke-direct {p0}, Lcom/vkcoffee/android/ui/WriteBar;->init()V

    .line 138
    return-void
.end method

.method static synthetic access$000(Lcom/vkcoffee/android/ui/WriteBar;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/WriteBar;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/vkcoffee/android/ui/WriteBar;->writeBarEmojiNew:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/vkcoffee/android/ui/WriteBar;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/WriteBar;

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/vkcoffee/android/ui/WriteBar;->allowNew:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/vkcoffee/android/ui/WriteBar;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/WriteBar;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/vkcoffee/android/ui/WriteBar;->onUplDone:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/vkcoffee/android/ui/WriteBar;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/WriteBar;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/vkcoffee/android/ui/WriteBar;->onUplDone:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/vkcoffee/android/ui/WriteBar;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/WriteBar;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/vkcoffee/android/ui/WriteBar;->onUplFail:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/vkcoffee/android/ui/WriteBar;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/WriteBar;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/vkcoffee/android/ui/WriteBar;->onUplFail:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/vkcoffee/android/ui/WriteBar;)Lcom/vkcoffee/android/stickers/StickersView$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/WriteBar;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/vkcoffee/android/ui/WriteBar;->mAutoSuggestPopupListener:Lcom/vkcoffee/android/stickers/StickersView$Listener;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/vkcoffee/android/ui/WriteBar;)Lcom/vkcoffee/android/stickers/AutoSuggestStickersPopupWindow;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/WriteBar;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/vkcoffee/android/ui/WriteBar;->mAutoSuggestPopup:Lcom/vkcoffee/android/stickers/AutoSuggestStickersPopupWindow;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/vkcoffee/android/ui/WriteBar;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/WriteBar;

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/vkcoffee/android/ui/WriteBar;->chooseVideo()V

    return-void
.end method

.method static synthetic access$1600(Lcom/vkcoffee/android/ui/WriteBar;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/WriteBar;

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/vkcoffee/android/ui/WriteBar;->showGiftsCatalog()V

    return-void
.end method

.method static synthetic access$1700(Lcom/vkcoffee/android/ui/WriteBar;Ljava/lang/String;ILandroid/net/Uri;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/WriteBar;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # Landroid/net/Uri;

    .prologue
    .line 82
    invoke-direct {p0, p1, p2, p3}, Lcom/vkcoffee/android/ui/WriteBar;->addVideoFileInternal(Ljava/lang/String;ILandroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$200(Lcom/vkcoffee/android/ui/WriteBar;)Lcom/vkcoffee/android/stickers/KeyboardPopup;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/WriteBar;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/vkcoffee/android/ui/WriteBar;->mKeyboardPopup:Lcom/vkcoffee/android/stickers/KeyboardPopup;

    return-object v0
.end method

.method static synthetic access$300(Lcom/vkcoffee/android/ui/WriteBar;)Lcom/vkcoffee/android/ui/AttachmentsEditorView;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/WriteBar;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/vkcoffee/android/ui/WriteBar;->attEditor:Lcom/vkcoffee/android/ui/AttachmentsEditorView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/vkcoffee/android/ui/WriteBar;)I
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/WriteBar;

    .prologue
    .line 82
    iget v0, p0, Lcom/vkcoffee/android/ui/WriteBar;->maxAtts:I

    return v0
.end method

.method static synthetic access$500(Lcom/vkcoffee/android/ui/WriteBar;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/WriteBar;

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/vkcoffee/android/ui/WriteBar;->mapAllowed:Z

    return v0
.end method

.method static synthetic access$600(Lcom/vkcoffee/android/ui/WriteBar;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/WriteBar;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/vkcoffee/android/ui/WriteBar;->graffitiPhoto:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/vkcoffee/android/ui/WriteBar;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/WriteBar;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/vkcoffee/android/ui/WriteBar;->graffitiTitle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/vkcoffee/android/ui/WriteBar;)Landroid/app/Fragment;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/WriteBar;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/vkcoffee/android/ui/WriteBar;->fragment:Landroid/app/Fragment;

    return-object v0
.end method

.method static synthetic access$900(Lcom/vkcoffee/android/ui/WriteBar;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/WriteBar;
    .param p1, "x1"    # Z

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/ui/WriteBar;->setAttEditorVisible(Z)V

    return-void
.end method

.method private addVideoFile(Landroid/net/Uri;)V
    .locals 11
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 702
    const/4 v6, 0x0

    .line 704
    .local v6, "duration":I
    :try_start_0
    new-instance v7, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v7}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 705
    .local v7, "mdr":Landroid/media/MediaMetadataRetriever;
    invoke-virtual {p1}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 706
    const/16 v0, 0x9

    invoke-virtual {v7, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    div-int/lit16 v6, v0, 0x3e8

    .line 707
    invoke-virtual {v7}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 712
    .end local v7    # "mdr":Landroid/media/MediaMetadataRetriever;
    :goto_0
    invoke-virtual {p1}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v9

    .line 713
    .local v9, "urlExternal":Ljava/lang/String;
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_0

    .line 714
    invoke-virtual {p1}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v6, p1}, Lcom/vkcoffee/android/ui/WriteBar;->addVideoFileInternal(Ljava/lang/String;ILandroid/net/Uri;)V

    .line 745
    :goto_1
    return-void

    .line 708
    .end local v9    # "urlExternal":Ljava/lang/String;
    :catch_0
    move-exception v10

    .line 709
    .local v10, "x":Ljava/lang/Exception;
    const-string/jumbo v0, "vk"

    const-string/jumbo v1, "Error getting video duration!"

    invoke-static {v0, v1, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 715
    .end local v10    # "x":Ljava/lang/Exception;
    .restart local v9    # "urlExternal":Ljava/lang/String;
    :cond_0
    const-string/jumbo v0, "unknown"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 716
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 717
    .local v8, "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 718
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/WriteBar;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 719
    .local v3, "ctx":Landroid/content/Context;
    new-instance v2, Landroid/app/ProgressDialog;

    invoke-direct {v2, v3}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 720
    .local v2, "progress":Landroid/app/ProgressDialog;
    move v4, v6

    .line 721
    .local v4, "durationFinal":I
    new-instance v0, Lcom/vkcoffee/android/ui/WriteBar$12;

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/vkcoffee/android/ui/WriteBar$12;-><init>(Lcom/vkcoffee/android/ui/WriteBar;Landroid/app/ProgressDialog;Landroid/content/Context;ILandroid/net/Uri;)V

    .line 741
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/WriteBar;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 721
    invoke-static {v8, v0, v1}, Lcom/vkcoffee/android/upload/UploadUtils;->doCopyFromRestrictedProviderAsync(Ljava/util/ArrayList;Lcom/vkcoffee/android/upload/UploadUtils$CopiesListener;Landroid/content/Context;)V

    goto :goto_1

    .line 743
    .end local v2    # "progress":Landroid/app/ProgressDialog;
    .end local v3    # "ctx":Landroid/content/Context;
    .end local v4    # "durationFinal":I
    .end local v8    # "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    :cond_1
    invoke-direct {p0, v9, v6, p1}, Lcom/vkcoffee/android/ui/WriteBar;->addVideoFileInternal(Ljava/lang/String;ILandroid/net/Uri;)V

    goto :goto_1
.end method

.method private addVideoFileInternal(Ljava/lang/String;ILandroid/net/Uri;)V
    .locals 4
    .param p1, "urlExternal"    # Ljava/lang/String;
    .param p2, "duration"    # I
    .param p3, "uri"    # Landroid/net/Uri;

    .prologue
    .line 748
    new-instance v1, Lcom/vkcoffee/android/api/VideoFile;

    invoke-direct {v1}, Lcom/vkcoffee/android/api/VideoFile;-><init>()V

    .line 749
    .local v1, "vf":Lcom/vkcoffee/android/api/VideoFile;
    iput-object p1, v1, Lcom/vkcoffee/android/api/VideoFile;->urlExternal:Ljava/lang/String;

    .line 750
    iput p2, v1, Lcom/vkcoffee/android/api/VideoFile;->duration:I

    .line 751
    const-string/jumbo v2, "file"

    invoke-virtual {p3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p3}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    :goto_0
    iput-object v2, v1, Lcom/vkcoffee/android/api/VideoFile;->title:Ljava/lang/String;

    .line 753
    new-instance v0, Lcom/vkcoffee/android/attachments/PendingVideoAttachment;

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/attachments/PendingVideoAttachment;-><init>(Lcom/vkcoffee/android/api/VideoFile;)V

    .line 754
    .local v0, "pva":Lcom/vkcoffee/android/attachments/PendingVideoAttachment;
    invoke-static {}, Lcom/vkcoffee/android/upload/Upload;->getNewID()I

    move-result v2

    iput v2, v0, Lcom/vkcoffee/android/attachments/PendingVideoAttachment;->vid:I

    .line 755
    iget-object v2, p0, Lcom/vkcoffee/android/ui/WriteBar;->attEditor:Lcom/vkcoffee/android/ui/AttachmentsEditorView;

    invoke-virtual {v2, v0}, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->add(Lcom/vkcoffee/android/attachments/Attachment;)V

    .line 756
    return-void

    .line 751
    .end local v0    # "pva":Lcom/vkcoffee/android/attachments/PendingVideoAttachment;
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "file://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p3}, Lcom/vkcoffee/android/ui/WriteBar;->getRealPathFromURI(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private chooseVideo()V
    .locals 4

    .prologue
    .line 559
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 560
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v1, "select"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 561
    new-instance v1, Lcom/vkcoffee/android/navigation/Navigator;

    const-class v2, Lcom/vkcoffee/android/fragments/videos/VideosFragment;

    invoke-direct {v1, v2, v0}, Lcom/vkcoffee/android/navigation/Navigator;-><init>(Ljava/lang/Class;Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/vkcoffee/android/ui/WriteBar;->fragment:Landroid/app/Fragment;

    const/16 v3, 0x2712

    invoke-virtual {v1, v2, v3}, Lcom/vkcoffee/android/navigation/Navigator;->forResult(Landroid/app/Fragment;I)V

    .line 562
    return-void
.end method

.method private static getRealPathFromURI(Landroid/net/Uri;)Ljava/lang/String;
    .locals 9
    .param p0, "contentUri"    # Landroid/net/Uri;

    .prologue
    const/4 v3, 0x0

    .line 759
    const-string/jumbo v0, "file"

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 760
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v8

    .line 768
    :goto_0
    return-object v8

    .line 762
    :cond_0
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v1, "_data"

    aput-object v1, v2, v0

    .line 763
    .local v2, "proj":[Ljava/lang/String;
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 764
    .local v7, "cursor":Landroid/database/Cursor;
    const-string/jumbo v0, "_data"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 765
    .local v6, "column_index":I
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 766
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 767
    .local v8, "path":Ljava/lang/String;
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private init()V
    .locals 11

    .prologue
    const v10, 0x7f100435

    const v9, 0x7f100433

    const/high16 v8, 0x41800000    # 16.0f

    const/4 v7, -0x1

    const/4 v6, 0x0

    .line 172
    invoke-virtual {p0, v7}, Lcom/vkcoffee/android/ui/WriteBar;->setBackgroundColor(I)V

    .line 173
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/vkcoffee/android/ui/WriteBar;->setOrientation(I)V

    .line 177
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/WriteBar;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0301a1

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/vkcoffee/android/ui/WriteBar;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/vkcoffee/android/ui/WriteBar;->addView(Landroid/view/View;)V

    .line 178
    const v3, 0x7f100436

    invoke-virtual {p0, v3}, Lcom/vkcoffee/android/ui/WriteBar;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/vkcoffee/android/ui/WriteBar;->buttonSend:Landroid/view/View;

    .line 179
    invoke-virtual {p0, v10}, Lcom/vkcoffee/android/ui/WriteBar;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/vkcoffee/android/ui/WriteBar;->writeBarAttach:Landroid/view/View;

    .line 180
    const v3, 0x7f100434

    invoke-virtual {p0, v3}, Lcom/vkcoffee/android/ui/WriteBar;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/vkcoffee/android/ui/WriteBar;->writeBarEmoji:Landroid/widget/ImageView;

    .line 181
    const v3, 0x7f100437

    invoke-virtual {p0, v3}, Lcom/vkcoffee/android/ui/WriteBar;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/vkcoffee/android/ui/WriteBar;->writeBarEmojiNew:Landroid/widget/ImageView;

    .line 182
    iget-object v3, p0, Lcom/vkcoffee/android/ui/WriteBar;->writeBarEmoji:Landroid/widget/ImageView;

    new-instance v4, Lcom/vkcoffee/android/ui/WriteBar$2;

    invoke-direct {v4, p0}, Lcom/vkcoffee/android/ui/WriteBar$2;-><init>(Lcom/vkcoffee/android/ui/WriteBar;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    iget-object v3, p0, Lcom/vkcoffee/android/ui/WriteBar;->writeBarAttach:Landroid/view/View;

    new-instance v4, Lcom/vkcoffee/android/ui/WriteBar$3;

    invoke-direct {v4, p0}, Lcom/vkcoffee/android/ui/WriteBar$3;-><init>(Lcom/vkcoffee/android/ui/WriteBar;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 228
    new-instance v3, Landroid/view/View;

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/WriteBar;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/vkcoffee/android/ui/WriteBar;->attachDivider:Landroid/view/View;

    .line 229
    iget-object v3, p0, Lcom/vkcoffee/android/ui/WriteBar;->attachDivider:Landroid/view/View;

    const v4, -0x212122

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 230
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v3}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v3

    invoke-direct {v1, v7, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 231
    .local v1, "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v3, 0x41400000    # 12.0f

    invoke-static {v3}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v3

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 232
    iget-object v3, p0, Lcom/vkcoffee/android/ui/WriteBar;->attachDivider:Landroid/view/View;

    invoke-virtual {p0, v3, v6, v1}, Lcom/vkcoffee/android/ui/WriteBar;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 233
    new-instance v3, Lcom/vkcoffee/android/ui/AttachmentsEditorView;

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/WriteBar;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/vkcoffee/android/ui/AttachmentsEditorView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/vkcoffee/android/ui/WriteBar;->attEditor:Lcom/vkcoffee/android/ui/AttachmentsEditorView;

    .line 234
    iget-object v3, p0, Lcom/vkcoffee/android/ui/WriteBar;->attEditor:Lcom/vkcoffee/android/ui/AttachmentsEditorView;

    invoke-static {v8}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v4

    invoke-static {v8}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v5

    invoke-virtual {v3, v4, v6, v5, v6}, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->setPadding(IIII)V

    .line 235
    iget-object v3, p0, Lcom/vkcoffee/android/ui/WriteBar;->attEditor:Lcom/vkcoffee/android/ui/AttachmentsEditorView;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x42b60000    # 91.0f

    invoke-static {v5}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v5

    invoke-direct {v4, v7, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v3, v6, v4}, Lcom/vkcoffee/android/ui/WriteBar;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 236
    invoke-direct {p0, v6}, Lcom/vkcoffee/android/ui/WriteBar;->setAttEditorVisible(Z)V

    .line 237
    iget-object v3, p0, Lcom/vkcoffee/android/ui/WriteBar;->attEditor:Lcom/vkcoffee/android/ui/AttachmentsEditorView;

    new-instance v4, Lcom/vkcoffee/android/ui/WriteBar$4;

    invoke-direct {v4, p0}, Lcom/vkcoffee/android/ui/WriteBar$4;-><init>(Lcom/vkcoffee/android/ui/WriteBar;)V

    invoke-virtual {v3, v4}, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->setCallback(Lcom/vkcoffee/android/ui/AttachmentsEditorView$Callback;)V

    .line 270
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xe

    if-lt v3, v4, :cond_0

    .line 271
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/WriteBar;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    new-instance v4, Lcom/vkcoffee/android/ui/WriteBar$5;

    invoke-direct {v4, p0}, Lcom/vkcoffee/android/ui/WriteBar$5;-><init>(Lcom/vkcoffee/android/ui/WriteBar;)V

    invoke-virtual {v3, v4}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 280
    invoke-static {p0}, Lcom/vkcoffee/android/ViewUtils;->setNoClipRecursive(Landroid/view/View;)V

    .line 282
    :cond_0
    invoke-virtual {p0, v9}, Lcom/vkcoffee/android/ui/WriteBar;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    new-instance v4, Lcom/vkcoffee/android/ui/WriteBar$6;

    invoke-direct {v4, p0}, Lcom/vkcoffee/android/ui/WriteBar$6;-><init>(Lcom/vkcoffee/android/ui/WriteBar;)V

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 301
    new-instance v4, Lcom/vkcoffee/android/stickers/AutoSuggestStickersPopupWindow;

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/WriteBar;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {p0, v9}, Lcom/vkcoffee/android/ui/WriteBar;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    invoke-virtual {p0, v10}, Lcom/vkcoffee/android/ui/WriteBar;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-direct {v4, v5, v3, v6}, Lcom/vkcoffee/android/stickers/AutoSuggestStickersPopupWindow;-><init>(Landroid/content/Context;Landroid/widget/EditText;Landroid/view/View;)V

    iput-object v4, p0, Lcom/vkcoffee/android/ui/WriteBar;->mAutoSuggestPopup:Lcom/vkcoffee/android/stickers/AutoSuggestStickersPopupWindow;

    .line 303
    iget-object v3, p0, Lcom/vkcoffee/android/ui/WriteBar;->mAutoSuggestPopup:Lcom/vkcoffee/android/stickers/AutoSuggestStickersPopupWindow;

    new-instance v4, Lcom/vkcoffee/android/ui/WriteBar$7;

    invoke-direct {v4, p0}, Lcom/vkcoffee/android/ui/WriteBar$7;-><init>(Lcom/vkcoffee/android/ui/WriteBar;)V

    invoke-virtual {v3, v4}, Lcom/vkcoffee/android/stickers/AutoSuggestStickersPopupWindow;->setListener(Lcom/vkcoffee/android/stickers/StickersView$Listener;)V

    .line 326
    const/4 v3, 0x2

    new-array v0, v3, [I

    .line 327
    .local v0, "location":[I
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 328
    .local v2, "size":Landroid/graphics/Point;
    new-instance v3, Lcom/vkcoffee/android/ui/WriteBar$8;

    invoke-direct {v3, p0, v2, v0}, Lcom/vkcoffee/android/ui/WriteBar$8;-><init>(Lcom/vkcoffee/android/ui/WriteBar;Landroid/graphics/Point;[I)V

    invoke-virtual {p0, v3}, Lcom/vkcoffee/android/ui/WriteBar;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 362
    return-void
.end method

.method private setAttEditorVisible(Z)V
    .locals 4
    .param p1, "visible"    # Z

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 588
    iget-object v3, p0, Lcom/vkcoffee/android/ui/WriteBar;->attEditor:Lcom/vkcoffee/android/ui/AttachmentsEditorView;

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->setVisibility(I)V

    .line 589
    iget-object v0, p0, Lcom/vkcoffee/android/ui/WriteBar;->attachDivider:Landroid/view/View;

    if-eqz p1, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 590
    return-void

    :cond_0
    move v0, v2

    .line 588
    goto :goto_0

    :cond_1
    move v1, v2

    .line 589
    goto :goto_1
.end method

.method private showGiftsCatalog()V
    .locals 2

    .prologue
    .line 565
    iget-object v0, p0, Lcom/vkcoffee/android/ui/WriteBar;->fragment:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/ui/WriteBar;->giftUser:Lcom/vkcoffee/android/UserProfile;

    invoke-static {v0, v1}, Lcom/vkcoffee/android/fragments/gifts/GiftsCatalogFragment;->start(Landroid/app/Activity;Lcom/vkcoffee/android/UserProfile;)V

    .line 566
    return-void
.end method


# virtual methods
.method public addAttachment(Lcom/vkcoffee/android/attachments/Attachment;)V
    .locals 1
    .param p1, "att"    # Lcom/vkcoffee/android/attachments/Attachment;

    .prologue
    .line 578
    iget-object v0, p0, Lcom/vkcoffee/android/ui/WriteBar;->attEditor:Lcom/vkcoffee/android/ui/AttachmentsEditorView;

    invoke-virtual {v0, p1}, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->add(Lcom/vkcoffee/android/attachments/Attachment;)V

    .line 579
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/ui/WriteBar;->setAttEditorVisible(Z)V

    .line 580
    return-void
.end method

.method public addFwdMessages(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/vkcoffee/android/Message;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 772
    .local p1, "msgs":Ljava/util/List;, "Ljava/util/List<Lcom/vkcoffee/android/Message;>;"
    iget-object v4, p0, Lcom/vkcoffee/android/ui/WriteBar;->attEditor:Lcom/vkcoffee/android/ui/AttachmentsEditorView;

    invoke-virtual {v4}, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->getAll()Ljava/util/ArrayList;

    move-result-object v1

    .line 773
    .local v1, "atts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/attachments/Attachment;>;"
    const/4 v3, 0x0

    .line 774
    .local v3, "i":I
    const/4 v2, 0x0

    .line 775
    .local v2, "found":Z
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/attachments/Attachment;

    .line 776
    .local v0, "a":Lcom/vkcoffee/android/attachments/Attachment;
    instance-of v5, v0, Lcom/vkcoffee/android/attachments/FwdMessagesAttachment;

    if-eqz v5, :cond_2

    .line 777
    const/4 v2, 0x1

    .line 782
    .end local v0    # "a":Lcom/vkcoffee/android/attachments/Attachment;
    :cond_0
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/vkcoffee/android/ui/WriteBar;->setAttEditorVisible(Z)V

    .line 783
    iget-object v4, p0, Lcom/vkcoffee/android/ui/WriteBar;->attEditor:Lcom/vkcoffee/android/ui/AttachmentsEditorView;

    new-instance v5, Lcom/vkcoffee/android/attachments/FwdMessagesAttachment;

    invoke-direct {v5, p1}, Lcom/vkcoffee/android/attachments/FwdMessagesAttachment;-><init>(Ljava/util/List;)V

    invoke-virtual {v4, v5}, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->add(Lcom/vkcoffee/android/attachments/Attachment;)V

    .line 784
    if-eqz v2, :cond_1

    .line 785
    iget-object v4, p0, Lcom/vkcoffee/android/ui/WriteBar;->attEditor:Lcom/vkcoffee/android/ui/AttachmentsEditorView;

    invoke-virtual {v4, v3}, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->removeWithoutCallback(I)V

    .line 787
    :cond_1
    return-void

    .line 780
    .restart local v0    # "a":Lcom/vkcoffee/android/attachments/Attachment;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 781
    goto :goto_0
.end method

.method public clearAttachments()V
    .locals 1

    .prologue
    .line 573
    iget-object v0, p0, Lcom/vkcoffee/android/ui/WriteBar;->attEditor:Lcom/vkcoffee/android/ui/AttachmentsEditorView;

    invoke-virtual {v0}, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->clear()V

    .line 574
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/ui/WriteBar;->setAttEditorVisible(Z)V

    .line 575
    return-void
.end method

.method public focus()V
    .locals 4

    .prologue
    const v3, 0x7f100433

    .line 593
    invoke-virtual {p0, v3}, Lcom/vkcoffee/android/ui/WriteBar;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 594
    invoke-virtual {p0, v3}, Lcom/vkcoffee/android/ui/WriteBar;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/WriteBar;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 595
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/WriteBar;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 596
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0, v3}, Lcom/vkcoffee/android/ui/WriteBar;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 597
    return-void
.end method

.method public getAnchor()Landroid/view/View;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/vkcoffee/android/ui/WriteBar;->writeBarEmoji:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getAttachments()Ljava/util/ArrayList;
    .locals 1
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
    .line 569
    iget-object v0, p0, Lcom/vkcoffee/android/ui/WriteBar;->attEditor:Lcom/vkcoffee/android/ui/AttachmentsEditorView;

    invoke-virtual {v0}, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->getAll()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 374
    const v0, 0x7f100433

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ui/WriteBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isTextEmpty()Z
    .locals 1

    .prologue
    .line 378
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/WriteBar;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUploading()Z
    .locals 1

    .prologue
    .line 382
    iget-object v0, p0, Lcom/vkcoffee/android/ui/WriteBar;->attEditor:Lcom/vkcoffee/android/ui/AttachmentsEditorView;

    invoke-virtual {v0}, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->isUploading()Z

    move-result v0

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 20
    .param p1, "reqCode"    # I
    .param p2, "resCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 601
    const/16 v16, -0x1

    move/from16 v0, p2

    move/from16 v1, v16

    if-ne v0, v1, :cond_0

    if-nez p3, :cond_1

    .line 699
    :cond_0
    :goto_0
    return-void

    .line 605
    :cond_1
    const/16 v16, 0x271a

    move/from16 v0, p1

    move/from16 v1, v16

    if-ne v0, v1, :cond_6

    if-eqz p3, :cond_6

    .line 606
    const-string/jumbo v16, "result_new_graffiti"

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_2

    .line 607
    const-string/jumbo v16, "result_new_graffiti"

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Lcom/vkcoffee/android/attachments/PendingGraffitiAttachment;

    .line 608
    .local v8, "graffiti":Lcom/vkcoffee/android/attachments/PendingGraffitiAttachment;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/WriteBar;->graffitiSender:Lcom/vkcoffee/android/ui/WriteBar$GraffitiSender;

    move-object/from16 v16, v0

    if-eqz v16, :cond_0

    .line 609
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/WriteBar;->graffitiSender:Lcom/vkcoffee/android/ui/WriteBar$GraffitiSender;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-interface {v0, v8}, Lcom/vkcoffee/android/ui/WriteBar$GraffitiSender;->sendGraffity(Lcom/vkcoffee/android/attachments/GraffitiAttachment;)V

    goto :goto_0

    .line 614
    .end local v8    # "graffiti":Lcom/vkcoffee/android/attachments/PendingGraffitiAttachment;
    :cond_2
    const-string/jumbo v16, "result_graffiti"

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_3

    .line 615
    const-string/jumbo v16, "result_graffiti"

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Lcom/vkcoffee/android/attachments/GraffitiAttachment;

    .line 616
    .local v8, "graffiti":Lcom/vkcoffee/android/attachments/GraffitiAttachment;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/WriteBar;->graffitiSender:Lcom/vkcoffee/android/ui/WriteBar$GraffitiSender;

    move-object/from16 v16, v0

    if-eqz v16, :cond_0

    .line 617
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/WriteBar;->graffitiSender:Lcom/vkcoffee/android/ui/WriteBar$GraffitiSender;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-interface {v0, v8}, Lcom/vkcoffee/android/ui/WriteBar$GraffitiSender;->sendGraffity(Lcom/vkcoffee/android/attachments/GraffitiAttachment;)V

    goto :goto_0

    .line 622
    .end local v8    # "graffiti":Lcom/vkcoffee/android/attachments/GraffitiAttachment;
    :cond_3
    const/16 v16, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/ui/WriteBar;->setAttEditorVisible(Z)V

    .line 623
    const-string/jumbo v16, "result_attachments"

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_5

    .line 624
    const-string/jumbo v16, "result_attachments"

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v12

    .line 625
    .local v12, "result":Landroid/os/Bundle;
    const-string/jumbo v16, "result_files"

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_6

    const-string/jumbo v16, "result_video_flags"

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_6

    .line 626
    const-string/jumbo v16, "result_files"

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 627
    .local v5, "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    const-string/jumbo v16, "result_video_flags"

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Landroid/os/Bundle;->getBooleanArray(Ljava/lang/String;)[Z

    move-result-object v15

    .line 628
    .local v15, "videoFlags":[Z
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    array-length v0, v15

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v9, v0, :cond_6

    .line 629
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/net/Uri;

    .line 630
    .local v13, "u":Landroid/net/Uri;
    aget-boolean v16, v15, v9

    if-eqz v16, :cond_4

    .line 631
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/vkcoffee/android/ui/WriteBar;->addVideoFile(Landroid/net/Uri;)V

    .line 628
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 633
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/WriteBar;->attEditor:Lcom/vkcoffee/android/ui/AttachmentsEditorView;

    move-object/from16 v16, v0

    new-instance v17, Lcom/vkcoffee/android/attachments/PendingPhotoAttachment;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "://"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v13}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Lcom/vkcoffee/android/attachments/PendingPhotoAttachment;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v16 .. v17}, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->add(Lcom/vkcoffee/android/attachments/Attachment;)V

    goto :goto_2

    .line 638
    .end local v5    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    .end local v9    # "i":I
    .end local v12    # "result":Landroid/os/Bundle;
    .end local v13    # "u":Landroid/net/Uri;
    .end local v15    # "videoFlags":[Z
    :cond_5
    const-string/jumbo v16, "audio"

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_8

    .line 639
    const-string/jumbo v16, "audio"

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/vkcoffee/android/AudioFile;

    .line 640
    .local v4, "file":Lcom/vkcoffee/android/AudioFile;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/WriteBar;->attEditor:Lcom/vkcoffee/android/ui/AttachmentsEditorView;

    move-object/from16 v16, v0

    new-instance v17, Lcom/vkcoffee/android/attachments/AudioAttachment;

    move-object/from16 v0, v17

    invoke-direct {v0, v4}, Lcom/vkcoffee/android/attachments/AudioAttachment;-><init>(Lcom/vkcoffee/android/AudioFile;)V

    invoke-virtual/range {v16 .. v17}, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->add(Lcom/vkcoffee/android/attachments/Attachment;)V

    .line 663
    .end local v4    # "file":Lcom/vkcoffee/android/AudioFile;
    :cond_6
    :goto_3
    const/16 v16, 0x2713

    move/from16 v0, p1

    move/from16 v1, v16

    if-ne v0, v1, :cond_7

    .line 664
    const-string/jumbo v16, "audio"

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/vkcoffee/android/AudioFile;

    .line 665
    .restart local v4    # "file":Lcom/vkcoffee/android/AudioFile;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/WriteBar;->attEditor:Lcom/vkcoffee/android/ui/AttachmentsEditorView;

    move-object/from16 v16, v0

    new-instance v17, Lcom/vkcoffee/android/attachments/AudioAttachment;

    move-object/from16 v0, v17

    invoke-direct {v0, v4}, Lcom/vkcoffee/android/attachments/AudioAttachment;-><init>(Lcom/vkcoffee/android/AudioFile;)V

    invoke-virtual/range {v16 .. v17}, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->add(Lcom/vkcoffee/android/attachments/Attachment;)V

    .line 667
    .end local v4    # "file":Lcom/vkcoffee/android/AudioFile;
    :cond_7
    const/16 v16, 0x2714

    move/from16 v0, p1

    move/from16 v1, v16

    if-ne v0, v1, :cond_c

    .line 670
    const-string/jumbo v16, "documents"

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 671
    .local v3, "docs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_4
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_c

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/Parcelable;

    .line 672
    .local v10, "p":Landroid/os/Parcelable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/WriteBar;->attEditor:Lcom/vkcoffee/android/ui/AttachmentsEditorView;

    move-object/from16 v17, v0

    check-cast v10, Lcom/vkcoffee/android/attachments/Attachment;

    .end local v10    # "p":Landroid/os/Parcelable;
    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->add(Lcom/vkcoffee/android/attachments/Attachment;)V

    goto :goto_4

    .line 642
    .end local v3    # "docs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    :cond_8
    const-string/jumbo v16, "documents"

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_9

    .line 643
    const-string/jumbo v16, "documents"

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 644
    .restart local v3    # "docs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_5
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_6

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/Parcelable;

    .line 645
    .restart local v10    # "p":Landroid/os/Parcelable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/WriteBar;->attEditor:Lcom/vkcoffee/android/ui/AttachmentsEditorView;

    move-object/from16 v17, v0

    check-cast v10, Lcom/vkcoffee/android/attachments/Attachment;

    .end local v10    # "p":Landroid/os/Parcelable;
    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->add(Lcom/vkcoffee/android/attachments/Attachment;)V

    goto :goto_5

    .line 648
    .end local v3    # "docs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    :cond_9
    const-string/jumbo v16, "video"

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_a

    .line 649
    const-string/jumbo v16, "video"

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v14

    check-cast v14, Lcom/vkcoffee/android/api/VideoFile;

    .line 650
    .local v14, "video":Lcom/vkcoffee/android/api/VideoFile;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/WriteBar;->attEditor:Lcom/vkcoffee/android/ui/AttachmentsEditorView;

    move-object/from16 v16, v0

    new-instance v17, Lcom/vkcoffee/android/attachments/VideoAttachment;

    move-object/from16 v0, v17

    invoke-direct {v0, v14}, Lcom/vkcoffee/android/attachments/VideoAttachment;-><init>(Lcom/vkcoffee/android/api/VideoFile;)V

    invoke-virtual/range {v16 .. v17}, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->add(Lcom/vkcoffee/android/attachments/Attachment;)V

    goto/16 :goto_3

    .line 652
    .end local v14    # "video":Lcom/vkcoffee/android/api/VideoFile;
    :cond_a
    const-string/jumbo v16, "photo"

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_b

    .line 653
    const-string/jumbo v16, "photo"

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v11

    check-cast v11, Lcom/vkcoffee/android/Photo;

    .line 654
    .local v11, "photo":Lcom/vkcoffee/android/Photo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/WriteBar;->attEditor:Lcom/vkcoffee/android/ui/AttachmentsEditorView;

    move-object/from16 v16, v0

    new-instance v17, Lcom/vkcoffee/android/attachments/PhotoAttachment;

    move-object/from16 v0, v17

    invoke-direct {v0, v11}, Lcom/vkcoffee/android/attachments/PhotoAttachment;-><init>(Lcom/vkcoffee/android/Photo;)V

    invoke-virtual/range {v16 .. v17}, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->add(Lcom/vkcoffee/android/attachments/Attachment;)V

    goto/16 :goto_3

    .line 656
    .end local v11    # "photo":Lcom/vkcoffee/android/Photo;
    :cond_b
    const-string/jumbo v16, "point"

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_6

    .line 657
    const-string/jumbo v16, "point"

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Lcom/vkcoffee/android/attachments/GeoAttachment;

    .line 658
    .local v7, "geo":Lcom/vkcoffee/android/attachments/GeoAttachment;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/WriteBar;->attEditor:Lcom/vkcoffee/android/ui/AttachmentsEditorView;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->add(Lcom/vkcoffee/android/attachments/Attachment;)V

    goto/16 :goto_3

    .line 675
    .end local v7    # "geo":Lcom/vkcoffee/android/attachments/GeoAttachment;
    :cond_c
    const/16 v16, 0x2712

    move/from16 v0, p1

    move/from16 v1, v16

    if-ne v0, v1, :cond_d

    .line 676
    const-string/jumbo v16, "video"

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v14

    check-cast v14, Lcom/vkcoffee/android/api/VideoFile;

    .line 677
    .restart local v14    # "video":Lcom/vkcoffee/android/api/VideoFile;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/WriteBar;->attEditor:Lcom/vkcoffee/android/ui/AttachmentsEditorView;

    move-object/from16 v16, v0

    new-instance v17, Lcom/vkcoffee/android/attachments/VideoAttachment;

    move-object/from16 v0, v17

    invoke-direct {v0, v14}, Lcom/vkcoffee/android/attachments/VideoAttachment;-><init>(Lcom/vkcoffee/android/api/VideoFile;)V

    invoke-virtual/range {v16 .. v17}, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->add(Lcom/vkcoffee/android/attachments/Attachment;)V

    .line 679
    .end local v14    # "video":Lcom/vkcoffee/android/api/VideoFile;
    :cond_d
    const/16 v16, 0x2711

    move/from16 v0, p1

    move/from16 v1, v16

    if-ne v0, v1, :cond_e

    .line 680
    const-string/jumbo v16, "attachment"

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_11

    .line 681
    const-string/jumbo v16, "attachment"

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/vkcoffee/android/attachments/PhotoAttachment;

    .line 682
    .local v2, "att":Lcom/vkcoffee/android/attachments/PhotoAttachment;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/WriteBar;->attEditor:Lcom/vkcoffee/android/ui/AttachmentsEditorView;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->add(Lcom/vkcoffee/android/attachments/Attachment;)V

    .line 693
    .end local v2    # "att":Lcom/vkcoffee/android/attachments/PhotoAttachment;
    :cond_e
    :goto_6
    const/16 v16, 0x2715

    move/from16 v0, p1

    move/from16 v1, v16

    if-ne v0, v1, :cond_f

    .line 694
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/WriteBar;->attEditor:Lcom/vkcoffee/android/ui/AttachmentsEditorView;

    move-object/from16 v17, v0

    const-string/jumbo v16, "point"

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v16

    check-cast v16, Lcom/vkcoffee/android/attachments/GeoAttachment;

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->add(Lcom/vkcoffee/android/attachments/Attachment;)V

    .line 696
    :cond_f
    const/16 v16, 0x2717

    move/from16 v0, p1

    move/from16 v1, v16

    if-eq v0, v1, :cond_10

    const/16 v16, 0x2716

    move/from16 v0, p1

    move/from16 v1, v16

    if-ne v0, v1, :cond_0

    .line 697
    :cond_10
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/ui/WriteBar;->addVideoFile(Landroid/net/Uri;)V

    goto/16 :goto_0

    .line 683
    :cond_11
    const-string/jumbo v16, "files"

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_12

    .line 684
    const-string/jumbo v16, "files"

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 685
    .local v6, "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_7
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_e

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 687
    .local v4, "file":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/WriteBar;->attEditor:Lcom/vkcoffee/android/ui/AttachmentsEditorView;

    move-object/from16 v17, v0

    new-instance v18, Lcom/vkcoffee/android/attachments/PendingPhotoAttachment;

    move-object/from16 v0, v18

    invoke-direct {v0, v4}, Lcom/vkcoffee/android/attachments/PendingPhotoAttachment;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v17 .. v18}, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->add(Lcom/vkcoffee/android/attachments/Attachment;)V

    goto :goto_7

    .line 690
    .end local v4    # "file":Ljava/lang/String;
    .end local v6    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/WriteBar;->attEditor:Lcom/vkcoffee/android/ui/AttachmentsEditorView;

    move-object/from16 v16, v0

    new-instance v17, Lcom/vkcoffee/android/attachments/PendingPhotoAttachment;

    const-string/jumbo v18, "file"

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Lcom/vkcoffee/android/attachments/PendingPhotoAttachment;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v16 .. v17}, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->add(Lcom/vkcoffee/android/attachments/Attachment;)V

    goto/16 :goto_6
.end method

.method protected onAttachedToWindow()V
    .locals 5

    .prologue
    .line 800
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 801
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 802
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "com.vkcoffee.android.STICKERS_NUM_UPDATES"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 803
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/WriteBar;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/vkcoffee/android/ui/WriteBar;->mReceiver:Landroid/content/BroadcastReceiver;

    const-string/jumbo v3, "com.vkcoffee.android.permission.ACCESS_DATA"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 804
    iget-object v2, p0, Lcom/vkcoffee/android/ui/WriteBar;->writeBarEmojiNew:Landroid/widget/ImageView;

    iget-boolean v1, p0, Lcom/vkcoffee/android/ui/WriteBar;->allowNew:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/vkcoffee/android/stickers/Stickers;->get()Lcom/vkcoffee/android/stickers/Stickers;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vkcoffee/android/stickers/Stickers;->getNumUpdates()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 805
    return-void

    .line 804
    :cond_0
    const/16 v1, 0x8

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 809
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 810
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/WriteBar;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/ui/WriteBar;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 811
    iget-object v0, p0, Lcom/vkcoffee/android/ui/WriteBar;->mAutoSuggestPopup:Lcom/vkcoffee/android/stickers/AutoSuggestStickersPopupWindow;

    invoke-virtual {v0}, Lcom/vkcoffee/android/stickers/AutoSuggestStickersPopupWindow;->hidePopup()V

    .line 812
    return-void
.end method

.method public openAttachMenu(III)V
    .locals 1
    .param p1, "gravity"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 392
    const v0, 0x7f020055

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/vkcoffee/android/ui/WriteBar;->openAttachMenu(IIII)V

    .line 393
    return-void
.end method

.method public openAttachMenu(IIII)V
    .locals 13
    .param p1, "gravity"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "bg"    # I

    .prologue
    .line 396
    iget-object v7, p0, Lcom/vkcoffee/android/ui/WriteBar;->attEditor:Lcom/vkcoffee/android/ui/AttachmentsEditorView;

    invoke-virtual {v7}, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->getCount()I

    move-result v7

    iget v8, p0, Lcom/vkcoffee/android/ui/WriteBar;->maxAtts:I

    if-lt v7, v8, :cond_0

    iget-boolean v7, p0, Lcom/vkcoffee/android/ui/WriteBar;->mapAllowed:Z

    if-nez v7, :cond_0

    .line 397
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/WriteBar;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/WriteBar;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f080084

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget v12, p0, Lcom/vkcoffee/android/ui/WriteBar;->maxAtts:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v8, v9, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 556
    :goto_0
    return-void

    .line 401
    :cond_0
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/WriteBar;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0d0017

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 402
    .local v5, "opts":[Ljava/lang/String;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 403
    .local v3, "items":Ljava/util/List;, "Ljava/util/List<Lcom/vkcoffee/android/ui/WriteBar$MenuItem;>;"
    new-instance v7, Lcom/vkcoffee/android/ui/WriteBar$MenuItem;

    const/4 v8, 0x0

    const v9, 0x7f02012f

    const/4 v10, 0x0

    aget-object v10, v5, v10

    const/4 v11, 0x0

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/vkcoffee/android/ui/WriteBar$MenuItem;-><init>(IILjava/lang/String;Lcom/vkcoffee/android/ui/WriteBar$1;)V

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 404
    new-instance v7, Lcom/vkcoffee/android/ui/WriteBar$MenuItem;

    const/4 v8, 0x1

    const v9, 0x7f02012b

    const/4 v10, 0x1

    aget-object v10, v5, v10

    const/4 v11, 0x0

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/vkcoffee/android/ui/WriteBar$MenuItem;-><init>(IILjava/lang/String;Lcom/vkcoffee/android/ui/WriteBar$1;)V

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 405
    new-instance v7, Lcom/vkcoffee/android/ui/WriteBar$MenuItem;

    const/4 v8, 0x2

    const v9, 0x7f020130

    const/4 v10, 0x2

    aget-object v10, v5, v10

    const/4 v11, 0x0

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/vkcoffee/android/ui/WriteBar$MenuItem;-><init>(IILjava/lang/String;Lcom/vkcoffee/android/ui/WriteBar$1;)V

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 406
    new-instance v7, Lcom/vkcoffee/android/ui/WriteBar$MenuItem;

    const/4 v8, 0x3

    const v9, 0x7f02012c

    const/4 v10, 0x3

    aget-object v10, v5, v10

    const/4 v11, 0x0

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/vkcoffee/android/ui/WriteBar$MenuItem;-><init>(IILjava/lang/String;Lcom/vkcoffee/android/ui/WriteBar$1;)V

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 407
    iget-boolean v7, p0, Lcom/vkcoffee/android/ui/WriteBar;->mapAllowed:Z

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/vkcoffee/android/ui/WriteBar;->attEditor:Lcom/vkcoffee/android/ui/AttachmentsEditorView;

    invoke-virtual {v7}, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->containsGeoAttachment()Z

    move-result v7

    if-nez v7, :cond_1

    .line 408
    new-instance v7, Lcom/vkcoffee/android/ui/WriteBar$MenuItem;

    const/4 v8, 0x4

    const v9, 0x7f02012e

    const/4 v10, 0x4

    aget-object v10, v5, v10

    const/4 v11, 0x0

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/vkcoffee/android/ui/WriteBar$MenuItem;-><init>(IILjava/lang/String;Lcom/vkcoffee/android/ui/WriteBar$1;)V

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 410
    :cond_1
    iget-boolean v7, p0, Lcom/vkcoffee/android/ui/WriteBar;->isChat:Z

    if-eqz v7, :cond_2

    iget-boolean v7, p0, Lcom/vkcoffee/android/ui/WriteBar;->giftAllowed:Z

    if-eqz v7, :cond_2

    .line 411
    new-instance v7, Lcom/vkcoffee/android/ui/WriteBar$MenuItem;

    const/4 v8, 0x5

    const v9, 0x7f02012d

    const/4 v10, 0x5

    aget-object v10, v5, v10

    const/4 v11, 0x0

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/vkcoffee/android/ui/WriteBar$MenuItem;-><init>(IILjava/lang/String;Lcom/vkcoffee/android/ui/WriteBar$1;)V

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 413
    :cond_2
    new-instance v1, Lcom/vkcoffee/android/ui/WriteBar$9;

    invoke-direct {v1, p0, v3}, Lcom/vkcoffee/android/ui/WriteBar$9;-><init>(Lcom/vkcoffee/android/ui/WriteBar;Ljava/util/List;)V

    .line 440
    .local v1, "attachAdapter":Landroid/widget/ListAdapter;
    new-instance v2, Landroid/app/Dialog;

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/WriteBar;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v2, v7}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 441
    .local v2, "dlg":Landroid/app/Dialog;
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/view/Window;->requestFeature(I)Z

    .line 442
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    .line 443
    .local v6, "wlp":Landroid/view/WindowManager$LayoutParams;
    iput p1, v6, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 444
    iput p2, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 445
    move/from16 v0, p3

    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 446
    const/high16 v7, 0x43430000    # 195.0f

    invoke-static {v7}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v7

    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 448
    const/4 v7, 0x0

    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    .line 449
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 450
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v7

    move/from16 v0, p4

    invoke-virtual {v7, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 451
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 452
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v7

    new-instance v8, Lcom/vkcoffee/android/ui/WriteBar$10;

    invoke-direct {v8, p0, v2}, Lcom/vkcoffee/android/ui/WriteBar$10;-><init>(Lcom/vkcoffee/android/ui/WriteBar;Landroid/app/Dialog;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 459
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x2

    invoke-virtual {v7, v8, v9}, Landroid/view/Window;->setFlags(II)V

    .line 460
    const/4 v7, 0x1

    invoke-virtual {v2, v7}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 461
    new-instance v4, Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/WriteBar;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v4, v7}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 462
    .local v4, "lv":Landroid/widget/ListView;
    const v7, 0x7f020101

    invoke-virtual {v4, v7}, Landroid/widget/ListView;->setSelector(I)V

    .line 463
    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 464
    invoke-virtual {v4, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 465
    new-instance v7, Lcom/vkcoffee/android/ui/WriteBar$11;

    invoke-direct {v7, p0, v2}, Lcom/vkcoffee/android/ui/WriteBar$11;-><init>(Lcom/vkcoffee/android/ui/WriteBar;Landroid/app/Dialog;)V

    invoke-virtual {v4, v7}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 554
    new-instance v7, Landroid/view/ViewGroup$LayoutParams;

    const/high16 v8, 0x43430000    # 195.0f

    invoke-static {v8}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v8

    const/4 v9, -0x2

    invoke-direct {v7, v8, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v4, v7}, Landroid/app/Dialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 555
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0
.end method

.method public setAttachLimits(IZ)V
    .locals 0
    .param p1, "max"    # I
    .param p2, "allowMap"    # Z

    .prologue
    .line 583
    iput-boolean p2, p0, Lcom/vkcoffee/android/ui/WriteBar;->mapAllowed:Z

    .line 584
    iput p1, p0, Lcom/vkcoffee/android/ui/WriteBar;->maxAtts:I

    .line 585
    return-void
.end method

.method public setAutoSuggestPopupListener(Lcom/vkcoffee/android/stickers/StickersView$Listener;)V
    .locals 0
    .param p1, "listener"    # Lcom/vkcoffee/android/stickers/StickersView$Listener;

    .prologue
    .line 168
    iput-object p1, p0, Lcom/vkcoffee/android/ui/WriteBar;->mAutoSuggestPopupListener:Lcom/vkcoffee/android/stickers/StickersView$Listener;

    .line 169
    return-void
.end method

.method public setFragment(Landroid/app/Fragment;)V
    .locals 0
    .param p1, "f"    # Landroid/app/Fragment;

    .prologue
    .line 365
    iput-object p1, p0, Lcom/vkcoffee/android/ui/WriteBar;->fragment:Landroid/app/Fragment;

    .line 366
    return-void
.end method

.method public setGraffitiPhoto(Ljava/lang/String;)V
    .locals 0
    .param p1, "graffitiPhoto"    # Ljava/lang/String;

    .prologue
    .line 151
    iput-object p1, p0, Lcom/vkcoffee/android/ui/WriteBar;->graffitiPhoto:Ljava/lang/String;

    .line 152
    return-void
.end method

.method public setGraffitiSender(Lcom/vkcoffee/android/ui/WriteBar$GraffitiSender;)V
    .locals 0
    .param p1, "graffitiSender"    # Lcom/vkcoffee/android/ui/WriteBar$GraffitiSender;

    .prologue
    .line 159
    iput-object p1, p0, Lcom/vkcoffee/android/ui/WriteBar;->graffitiSender:Lcom/vkcoffee/android/ui/WriteBar$GraffitiSender;

    .line 160
    return-void
.end method

.method public setGraffitiTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "graffitiTitle"    # Ljava/lang/String;

    .prologue
    .line 155
    iput-object p1, p0, Lcom/vkcoffee/android/ui/WriteBar;->graffitiTitle:Ljava/lang/String;

    .line 156
    return-void
.end method

.method public setKeyboardPopup(Lcom/vkcoffee/android/stickers/KeyboardPopup;)V
    .locals 0
    .param p1, "keyboardPopup"    # Lcom/vkcoffee/android/stickers/KeyboardPopup;

    .prologue
    .line 141
    iput-object p1, p0, Lcom/vkcoffee/android/ui/WriteBar;->mKeyboardPopup:Lcom/vkcoffee/android/stickers/KeyboardPopup;

    .line 142
    return-void
.end method

.method public setOnSendClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "onSendClickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 145
    iget-object v0, p0, Lcom/vkcoffee/android/ui/WriteBar;->buttonSend:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/vkcoffee/android/ui/WriteBar;->buttonSend:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    :cond_0
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 388
    const v0, 0x7f100433

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ui/WriteBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 389
    return-void
.end method

.method public setUploadType(ZI)V
    .locals 1
    .param p1, "isWall"    # Z
    .param p2, "oid"    # I

    .prologue
    .line 369
    iget-object v0, p0, Lcom/vkcoffee/android/ui/WriteBar;->attEditor:Lcom/vkcoffee/android/ui/AttachmentsEditorView;

    iput-boolean p1, v0, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->isWallPhoto:Z

    .line 370
    iget-object v0, p0, Lcom/vkcoffee/android/ui/WriteBar;->attEditor:Lcom/vkcoffee/android/ui/AttachmentsEditorView;

    iput p2, v0, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->uploadOwnerId:I

    .line 371
    return-void
.end method

.method public showDefaultIcon()V
    .locals 4

    .prologue
    .line 830
    iget-object v0, p0, Lcom/vkcoffee/android/ui/WriteBar;->writeBarEmoji:Landroid/widget/ImageView;

    new-instance v1, Lcom/vkcoffee/android/ui/drawable/RecoloredDrawable;

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/WriteBar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020210

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const v3, -0x4b4845

    invoke-direct {v1, v2, v3}, Lcom/vkcoffee/android/ui/drawable/RecoloredDrawable;-><init>(Landroid/graphics/drawable/Drawable;I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 831
    iget-object v1, p0, Lcom/vkcoffee/android/ui/WriteBar;->writeBarEmojiNew:Landroid/widget/ImageView;

    invoke-static {}, Lcom/vkcoffee/android/stickers/Stickers;->get()Lcom/vkcoffee/android/stickers/Stickers;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkcoffee/android/stickers/Stickers;->getNumUpdates()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 832
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkcoffee/android/ui/WriteBar;->allowNew:Z

    .line 833
    return-void

    .line 831
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public showHideIcon()V
    .locals 4

    .prologue
    .line 823
    iget-object v0, p0, Lcom/vkcoffee/android/ui/WriteBar;->writeBarEmoji:Landroid/widget/ImageView;

    new-instance v1, Lcom/vkcoffee/android/ui/drawable/RecoloredDrawable;

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/WriteBar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020210

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const v3, -0x9c7141

    invoke-direct {v1, v2, v3}, Lcom/vkcoffee/android/ui/drawable/RecoloredDrawable;-><init>(Landroid/graphics/drawable/Drawable;I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 824
    iget-object v0, p0, Lcom/vkcoffee/android/ui/WriteBar;->writeBarEmojiNew:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 825
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkcoffee/android/ui/WriteBar;->allowNew:Z

    .line 826
    return-void
.end method

.method public showKeyboardIcon()V
    .locals 4

    .prologue
    .line 816
    iget-object v0, p0, Lcom/vkcoffee/android/ui/WriteBar;->writeBarEmoji:Landroid/widget/ImageView;

    new-instance v1, Lcom/vkcoffee/android/ui/drawable/RecoloredDrawable;

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/WriteBar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020173

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const v3, -0x4b4845

    invoke-direct {v1, v2, v3}, Lcom/vkcoffee/android/ui/drawable/RecoloredDrawable;-><init>(Landroid/graphics/drawable/Drawable;I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 817
    iget-object v0, p0, Lcom/vkcoffee/android/ui/WriteBar;->writeBarEmojiNew:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 818
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkcoffee/android/ui/WriteBar;->allowNew:Z

    .line 819
    return-void
.end method

.method public waitForUploads(Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "onDone"    # Ljava/lang/Runnable;
    .param p2, "onFailed"    # Ljava/lang/Runnable;

    .prologue
    .line 790
    iget-object v0, p0, Lcom/vkcoffee/android/ui/WriteBar;->attEditor:Lcom/vkcoffee/android/ui/AttachmentsEditorView;

    invoke-virtual {v0}, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->isUploading()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 791
    iput-object p1, p0, Lcom/vkcoffee/android/ui/WriteBar;->onUplDone:Ljava/lang/Runnable;

    .line 792
    iput-object p2, p0, Lcom/vkcoffee/android/ui/WriteBar;->onUplFail:Ljava/lang/Runnable;

    .line 796
    :goto_0
    return-void

    .line 794
    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method
