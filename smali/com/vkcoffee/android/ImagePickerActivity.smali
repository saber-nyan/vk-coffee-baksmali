.class public Lcom/vkcoffee/android/ImagePickerActivity;
.super Landroid/app/Activity;
.source "ImagePickerActivity.java"


# static fields
.field private static final ALBUM_RESULT:I = 0x33

.field private static final GALLERY_RESULT:I = 0x32

.field private static final handler:Landroid/os/Handler;


# instance fields
.field private crop:Z

.field private forceThumb:Z

.field private logoutReceiver:Lcom/vkcoffee/android/activities/LogoutReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 28
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/vkcoffee/android/ImagePickerActivity;->handler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 26
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 33
    iput-boolean v0, p0, Lcom/vkcoffee/android/ImagePickerActivity;->crop:Z

    .line 34
    iput-boolean v0, p0, Lcom/vkcoffee/android/ImagePickerActivity;->forceThumb:Z

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkcoffee/android/ImagePickerActivity;->logoutReceiver:Lcom/vkcoffee/android/activities/LogoutReceiver;

    return-void
.end method

.method private customSelected(I)V
    .locals 2
    .param p1, "idx"    # I

    .prologue
    .line 128
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 129
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "option"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 130
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/vkcoffee/android/ImagePickerActivity;->setResult(ILandroid/content/Intent;)V

    .line 131
    invoke-virtual {p0}, Lcom/vkcoffee/android/ImagePickerActivity;->finish()V

    .line 132
    return-void
.end method

.method private dispatchTakePictureIntent()V
    .locals 4

    .prologue
    .line 97
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 98
    .local v1, "takePictureIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/vkcoffee/android/ImagePickerActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 99
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/vk/attachpicker/util/CameraUtils;->getCameraRequestData(Z)Landroid/support/v4/util/Pair;

    move-result-object v0

    .line 100
    .local v0, "request":Landroid/support/v4/util/Pair;, "Landroid/support/v4/util/Pair<Ljava/lang/Integer;Ljava/io/File;>;"
    const-string/jumbo v3, "output"

    iget-object v2, v0, Landroid/support/v4/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/io/File;

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 101
    iget-object v2, v0, Landroid/support/v4/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/vkcoffee/android/ImagePickerActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 103
    .end local v0    # "request":Landroid/support/v4/util/Pair;, "Landroid/support/v4/util/Pair<Ljava/lang/Integer;Ljava/io/File;>;"
    :cond_0
    return-void
.end method

.method private startAlbum()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 121
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 122
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v1, "select"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 123
    const-string/jumbo v1, "need_system"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 124
    const-class v1, Lcom/vkcoffee/android/fragments/PhotosFragment;

    const/16 v2, 0x33

    invoke-static {v1, v0, p0, v2}, Lcom/vkcoffee/android/navigation/Navigate;->forResult(Ljava/lang/Class;Landroid/os/Bundle;Landroid/app/Activity;I)V

    .line 125
    return-void
.end method

.method private startGallery()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 106
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/vk/attachpicker/PhotoVideoAttachActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 107
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "selection_limit"

    invoke-virtual {p0}, Lcom/vkcoffee/android/ImagePickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "limit"

    const/16 v4, 0x64

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 108
    invoke-virtual {p0}, Lcom/vkcoffee/android/ImagePickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "limit"

    invoke-virtual {v1, v2, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v5, :cond_0

    .line 109
    const-string/jumbo v1, "single_mode"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 111
    :cond_0
    const-string/jumbo v1, "no_thumbs"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 112
    const-string/jumbo v1, "no_thumbs"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 114
    :cond_1
    iget-boolean v1, p0, Lcom/vkcoffee/android/ImagePickerActivity;->forceThumb:Z

    if-eqz v1, :cond_2

    .line 115
    const-string/jumbo v1, "force_thumb"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 117
    :cond_2
    const/16 v1, 0x32

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/ImagePickerActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 118
    return-void
.end method


# virtual methods
.method synthetic lambda$onCreate$639(Ljava/util/ArrayList;Landroid/content/DialogInterface;I)V
    .locals 2
    .param p2, "dialog"    # Landroid/content/DialogInterface;
    .param p3, "which"    # I

    .prologue
    .line 73
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p3, v1, :cond_3

    .line 74
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 75
    .local v0, "a":Ljava/lang/String;
    const-string/jumbo v1, "g"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 76
    invoke-direct {p0}, Lcom/vkcoffee/android/ImagePickerActivity;->startGallery()V

    .line 85
    .end local v0    # "a":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 77
    .restart local v0    # "a":Ljava/lang/String;
    :cond_1
    const-string/jumbo v1, "c"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 78
    invoke-direct {p0}, Lcom/vkcoffee/android/ImagePickerActivity;->dispatchTakePictureIntent()V

    goto :goto_0

    .line 79
    :cond_2
    const-string/jumbo v1, "a"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 80
    invoke-direct {p0}, Lcom/vkcoffee/android/ImagePickerActivity;->startAlbum()V

    goto :goto_0

    .line 83
    .end local v0    # "a":Ljava/lang/String;
    :cond_3
    add-int/lit8 v1, p3, -0x2

    invoke-direct {p0, v1}, Lcom/vkcoffee/android/ImagePickerActivity;->customSelected(I)V

    goto :goto_0
.end method

.method synthetic lambda$onCreate$640(Landroid/content/DialogInterface;)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/vkcoffee/android/ImagePickerActivity;->finish()V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 15
    .param p1, "reqCode"    # I
    .param p2, "result"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 135
    const/4 v12, -0x1

    move/from16 v0, p2

    if-ne v0, v12, :cond_8

    .line 136
    const/16 v12, 0x32

    move/from16 v0, p1

    if-ne v0, v12, :cond_3

    if-eqz p3, :cond_3

    const-string/jumbo v12, "result_attachments"

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 137
    const-string/jumbo v12, "result_attachments"

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    .line 139
    .local v5, "imagesResult":Landroid/os/Bundle;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 140
    .local v3, "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string/jumbo v12, "result_files"

    invoke-virtual {v5, v12}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1

    const-string/jumbo v12, "result_video_flags"

    invoke-virtual {v5, v12}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 141
    const-string/jumbo v12, "result_files"

    invoke-virtual {v5, v12}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    .line 142
    .local v10, "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    const-string/jumbo v12, "result_video_flags"

    invoke-virtual {v5, v12}, Landroid/os/Bundle;->getBooleanArray(Ljava/lang/String;)[Z

    move-result-object v11

    .line 143
    .local v11, "videoFlags":[Z
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v12, v11

    if-ge v4, v12, :cond_1

    .line 144
    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/Uri;

    .line 145
    .local v9, "u":Landroid/net/Uri;
    aget-boolean v12, v11, v4

    if-nez v12, :cond_0

    .line 146
    invoke-virtual {v9}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 152
    .end local v4    # "i":I
    .end local v9    # "u":Landroid/net/Uri;
    .end local v10    # "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    .end local v11    # "videoFlags":[Z
    :cond_1
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 153
    .local v8, "res":Landroid/content/Intent;
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_6

    .line 155
    const-string/jumbo v13, "file"

    const/4 v12, 0x0

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v8, v13, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 159
    :goto_1
    iget-boolean v12, p0, Lcom/vkcoffee/android/ImagePickerActivity;->forceThumb:Z

    if-eqz v12, :cond_2

    .line 160
    const-string/jumbo v12, "cropLeft"

    const-string/jumbo v13, "cropLeft"

    const/4 v14, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v13

    invoke-virtual {v8, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 161
    const-string/jumbo v12, "cropTop"

    const-string/jumbo v13, "cropTop"

    const/4 v14, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v13

    invoke-virtual {v8, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 162
    const-string/jumbo v12, "cropRight"

    const-string/jumbo v13, "cropRight"

    const/4 v14, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v13

    invoke-virtual {v8, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 163
    const-string/jumbo v12, "cropBottom"

    const-string/jumbo v13, "cropBottom"

    const/4 v14, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v13

    invoke-virtual {v8, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 165
    :cond_2
    const/4 v12, -0x1

    invoke-virtual {p0, v12, v8}, Lcom/vkcoffee/android/ImagePickerActivity;->setResult(ILandroid/content/Intent;)V

    .line 166
    invoke-virtual {p0}, Lcom/vkcoffee/android/ImagePickerActivity;->finish()V

    .line 168
    .end local v3    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v5    # "imagesResult":Landroid/os/Bundle;
    .end local v8    # "res":Landroid/content/Intent;
    :cond_3
    invoke-static/range {p1 .. p1}, Lcom/vk/attachpicker/util/CameraUtils;->isRequestValid(I)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 169
    invoke-static/range {p1 .. p1}, Lcom/vk/attachpicker/util/CameraUtils;->getFileById(I)Ljava/io/File;

    move-result-object v2

    .line 171
    .local v2, "file":Ljava/io/File;
    if-eqz v2, :cond_7

    .line 172
    invoke-static {}, Lcom/vk/attachpicker/Picker;->getContext()Landroid/content/Context;

    move-result-object v12

    const/4 v13, 0x0

    invoke-static {v12, v2, v13}, Lcom/vk/attachpicker/util/CameraUtils;->addMediaToGallery(Landroid/content/Context;Ljava/io/File;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    .line 173
    new-instance v1, Landroid/content/Intent;

    const-class v12, Lcom/vk/attachpicker/PhotoEditorActivity;

    invoke-direct {v1, p0, v12}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 174
    .local v1, "editorIntent":Landroid/content/Intent;
    const-string/jumbo v12, "file"

    invoke-virtual {v1, v12, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 175
    const-string/jumbo v12, "force_thumb"

    iget-boolean v13, p0, Lcom/vkcoffee/android/ImagePickerActivity;->forceThumb:Z

    invoke-virtual {v1, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 176
    const/16 v12, 0x32

    invoke-virtual {p0, v1, v12}, Lcom/vkcoffee/android/ImagePickerActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 181
    .end local v1    # "editorIntent":Landroid/content/Intent;
    .end local v2    # "file":Ljava/io/File;
    :cond_4
    :goto_2
    const/16 v12, 0x33

    move/from16 v0, p1

    if-ne v0, v12, :cond_5

    .line 182
    const-string/jumbo v12, "photo"

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Lcom/vkcoffee/android/Photo;

    .line 183
    .local v7, "photo":Lcom/vkcoffee/android/Photo;
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 184
    .local v6, "intent":Landroid/content/Intent;
    const-string/jumbo v12, "attachment"

    new-instance v13, Lcom/vkcoffee/android/attachments/PhotoAttachment;

    invoke-direct {v13, v7}, Lcom/vkcoffee/android/attachments/PhotoAttachment;-><init>(Lcom/vkcoffee/android/Photo;)V

    invoke-virtual {v6, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 185
    const/4 v12, -0x1

    invoke-virtual {p0, v12, v6}, Lcom/vkcoffee/android/ImagePickerActivity;->setResult(ILandroid/content/Intent;)V

    .line 186
    invoke-virtual {p0}, Lcom/vkcoffee/android/ImagePickerActivity;->finish()V

    .line 192
    .end local v6    # "intent":Landroid/content/Intent;
    .end local v7    # "photo":Lcom/vkcoffee/android/Photo;
    :cond_5
    :goto_3
    return-void

    .line 157
    .restart local v3    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v5    # "imagesResult":Landroid/os/Bundle;
    .restart local v8    # "res":Landroid/content/Intent;
    :cond_6
    const-string/jumbo v12, "files"

    invoke-virtual {v8, v12, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto/16 :goto_1

    .line 178
    .end local v3    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v5    # "imagesResult":Landroid/os/Bundle;
    .end local v8    # "res":Landroid/content/Intent;
    .restart local v2    # "file":Ljava/io/File;
    :cond_7
    invoke-virtual {p0}, Lcom/vkcoffee/android/ImagePickerActivity;->finish()V

    goto :goto_2

    .line 189
    .end local v2    # "file":Ljava/io/File;
    :cond_8
    const/4 v12, 0x0

    invoke-virtual {p0, v12}, Lcom/vkcoffee/android/ImagePickerActivity;->setResult(I)V

    .line 190
    invoke-virtual {p0}, Lcom/vkcoffee/android/ImagePickerActivity;->finish()V

    goto :goto_3
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 39
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    invoke-static {p0}, Lcom/vkcoffee/android/activities/LogoutReceiver;->register(Landroid/app/Activity;)Lcom/vkcoffee/android/activities/LogoutReceiver;

    move-result-object v2

    iput-object v2, p0, Lcom/vkcoffee/android/ImagePickerActivity;->logoutReceiver:Lcom/vkcoffee/android/activities/LogoutReceiver;

    .line 43
    invoke-virtual {p0, v4, v4}, Lcom/vkcoffee/android/ImagePickerActivity;->overridePendingTransition(II)V

    .line 45
    invoke-virtual {p0}, Lcom/vkcoffee/android/ImagePickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "crop"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/vkcoffee/android/ImagePickerActivity;->crop:Z

    .line 46
    invoke-virtual {p0}, Lcom/vkcoffee/android/ImagePickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "force_thumb"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/vkcoffee/android/ImagePickerActivity;->forceThumb:Z

    .line 48
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 49
    .local v1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 50
    .local v0, "acts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/vkcoffee/android/ImagePickerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08005f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    const-string/jumbo v2, "g"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    invoke-virtual {p0}, Lcom/vkcoffee/android/ImagePickerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08005d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    const-string/jumbo v2, "c"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    invoke-virtual {p0}, Lcom/vkcoffee/android/ImagePickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "allow_album"

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 55
    invoke-virtual {p0}, Lcom/vkcoffee/android/ImagePickerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08005e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    const-string/jumbo v2, "a"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    :cond_0
    invoke-virtual {p0}, Lcom/vkcoffee/android/ImagePickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "custom"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 59
    invoke-virtual {p0}, Lcom/vkcoffee/android/ImagePickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "custom"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 61
    :cond_1
    invoke-virtual {p0}, Lcom/vkcoffee/android/ImagePickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "type"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_2

    .line 62
    invoke-direct {p0}, Lcom/vkcoffee/android/ImagePickerActivity;->dispatchTakePictureIntent()V

    .line 88
    :goto_0
    return-void

    .line 65
    :cond_2
    invoke-virtual {p0}, Lcom/vkcoffee/android/ImagePickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "type"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v6, :cond_3

    .line 66
    invoke-direct {p0}, Lcom/vkcoffee/android/ImagePickerActivity;->startGallery()V

    goto :goto_0

    .line 70
    :cond_3
    new-instance v2, Lcom/vkcoffee/android/VKAlertDialog$Builder;

    invoke-direct {v2, p0}, Lcom/vkcoffee/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f08007d

    .line 71
    invoke-virtual {v2, v3}, Lcom/vkcoffee/android/VKAlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 72
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/CharSequence;

    invoke-static {p0, v0}, Lcom/vkcoffee/android/ImagePickerActivity$$Lambda$1;->lambdaFactory$(Lcom/vkcoffee/android/ImagePickerActivity;Ljava/util/ArrayList;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-static {p0}, Lcom/vkcoffee/android/ImagePickerActivity$$Lambda$2;->lambdaFactory$(Lcom/vkcoffee/android/ImagePickerActivity;)Landroid/content/DialogInterface$OnCancelListener;

    move-result-object v3

    .line 86
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 87
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/vkcoffee/android/ImagePickerActivity;->logoutReceiver:Lcom/vkcoffee/android/activities/LogoutReceiver;

    invoke-virtual {v0}, Lcom/vkcoffee/android/activities/LogoutReceiver;->unregister()V

    .line 93
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 94
    return-void
.end method
