.class public Lcom/vk/attachpicker/SelectionContext;
.super Ljava/lang/Object;
.source "SelectionContext.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vk/attachpicker/SelectionContext$SelectionContextProvider;
    }
.end annotation


# static fields
.field public static final globalCheckLock:Lcom/vk/attachpicker/util/TimeoutLock;


# instance fields
.field private final currentSelection:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vk/attachpicker/mediastore/MediaStoreEntry;",
            ">;"
        }
    .end annotation
.end field

.field private limit:I

.field private requestCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 69
    new-instance v0, Lcom/vk/attachpicker/util/TimeoutLock;

    const-wide/16 v2, 0x12c

    invoke-direct {v0, v2, v3}, Lcom/vk/attachpicker/util/TimeoutLock;-><init>(J)V

    sput-object v0, Lcom/vk/attachpicker/SelectionContext;->globalCheckLock:Lcom/vk/attachpicker/util/TimeoutLock;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vk/attachpicker/SelectionContext;->currentSelection:Ljava/util/ArrayList;

    .line 74
    const/16 v0, 0xa

    iput v0, p0, Lcom/vk/attachpicker/SelectionContext;->limit:I

    .line 159
    return-void
.end method

.method public static packSelection(Landroid/os/Bundle;)Landroid/content/Intent;
    .locals 2
    .param p0, "b"    # Landroid/os/Bundle;

    .prologue
    .line 64
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 65
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "result_attachments"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 66
    return-object v0
.end method

.method public static packSingleEntry(Lcom/vk/attachpicker/mediastore/MediaStoreEntry;)Landroid/content/Intent;
    .locals 6
    .param p0, "e"    # Lcom/vk/attachpicker/mediastore/MediaStoreEntry;

    .prologue
    const/4 v4, 0x1

    .line 18
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 19
    .local v1, "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    new-array v3, v4, [Z

    .line 21
    .local v3, "videoFlags":[Z
    iget-object v4, p0, Lcom/vk/attachpicker/mediastore/MediaStoreEntry;->path:Landroid/net/Uri;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    const/4 v4, 0x0

    iget-boolean v5, p0, Lcom/vk/attachpicker/mediastore/MediaStoreEntry;->isVideo:Z

    aput-boolean v5, v3, v4

    .line 24
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 25
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v4, "result_files"

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 26
    const-string/jumbo v4, "result_video_flags"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putBooleanArray(Ljava/lang/String;[Z)V

    .line 28
    invoke-static {v0}, Lcom/vk/attachpicker/SelectionContext;->packSelection(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v2

    .line 29
    .local v2, "intent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/vk/attachpicker/mediastore/MediaStoreEntry;->path:Landroid/net/Uri;

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 30
    return-object v2
.end method

.method public static packSinglePhoto(Ljava/io/File;)Landroid/content/Intent;
    .locals 5
    .param p0, "file"    # Ljava/io/File;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 34
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 35
    .local v1, "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    new-array v2, v3, [Z

    .line 37
    .local v2, "videoFlags":[Z
    invoke-static {p0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    aput-boolean v4, v2, v4

    .line 40
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 41
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v3, "result_files"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 42
    const-string/jumbo v3, "result_video_flags"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putBooleanArray(Ljava/lang/String;[Z)V

    .line 44
    invoke-static {v0}, Lcom/vk/attachpicker/SelectionContext;->packSelection(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v3

    return-object v3
.end method

.method public static packSingleVideo(Landroid/net/Uri;)Landroid/content/Intent;
    .locals 6
    .param p0, "file"    # Landroid/net/Uri;

    .prologue
    const/4 v5, 0x1

    .line 48
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 49
    .local v1, "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    new-array v3, v5, [Z

    .line 51
    .local v3, "videoFlags":[Z
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    const/4 v4, 0x0

    aput-boolean v5, v3, v4

    .line 54
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 55
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v4, "result_files"

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 56
    const-string/jumbo v4, "result_video_flags"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putBooleanArray(Ljava/lang/String;[Z)V

    .line 58
    invoke-static {v0}, Lcom/vk/attachpicker/SelectionContext;->packSelection(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v2

    .line 59
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v2, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 60
    return-object v2
.end method


# virtual methods
.method public addSelection(Lcom/vk/attachpicker/mediastore/MediaStoreEntry;)I
    .locals 2
    .param p1, "entry"    # Lcom/vk/attachpicker/mediastore/MediaStoreEntry;

    .prologue
    .line 136
    iget-object v0, p0, Lcom/vk/attachpicker/SelectionContext;->currentSelection:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/vk/attachpicker/SelectionContext;->limit:I

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/vk/attachpicker/SelectionContext;->isSelected(Lcom/vk/attachpicker/mediastore/MediaStoreEntry;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 137
    :cond_0
    invoke-virtual {p0, p1}, Lcom/vk/attachpicker/SelectionContext;->findSelectionPosition(Lcom/vk/attachpicker/mediastore/MediaStoreEntry;)I

    move-result v0

    .line 141
    :goto_0
    return v0

    .line 139
    :cond_1
    iget-object v0, p0, Lcom/vk/attachpicker/SelectionContext;->currentSelection:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    invoke-static {}, Lcom/vk/attachpicker/events/NotificationCenter;->getInstance()Lcom/vk/attachpicker/events/NotificationCenter;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/vk/attachpicker/events/NotificationCenter;->fireEvent(I)V

    .line 141
    iget-object v0, p0, Lcom/vk/attachpicker/SelectionContext;->currentSelection:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 155
    iget-object v0, p0, Lcom/vk/attachpicker/SelectionContext;->currentSelection:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 156
    invoke-static {}, Lcom/vk/attachpicker/events/NotificationCenter;->getInstance()Lcom/vk/attachpicker/events/NotificationCenter;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/vk/attachpicker/events/NotificationCenter;->fireEvent(I)V

    .line 157
    return-void
.end method

.method public findSelectionPosition(Lcom/vk/attachpicker/mediastore/MediaStoreEntry;)I
    .locals 3
    .param p1, "entry"    # Lcom/vk/attachpicker/mediastore/MediaStoreEntry;

    .prologue
    .line 125
    const/4 v1, -0x1

    .line 126
    .local v1, "pos":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/vk/attachpicker/SelectionContext;->currentSelection:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 127
    iget-object v2, p0, Lcom/vk/attachpicker/SelectionContext;->currentSelection:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vk/attachpicker/mediastore/MediaStoreEntry;

    invoke-virtual {v2, p1}, Lcom/vk/attachpicker/mediastore/MediaStoreEntry;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 128
    move v1, v0

    .line 132
    :cond_0
    return v1

    .line 126
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getLimit()I
    .locals 1

    .prologue
    .line 106
    iget v0, p0, Lcom/vk/attachpicker/SelectionContext;->limit:I

    return v0
.end method

.method public getPackedSelection()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/vk/attachpicker/SelectionContext;->getSelection()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/vk/attachpicker/SelectionContext;->packSelection(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public getRequestCode()I
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lcom/vk/attachpicker/SelectionContext;->requestCode:I

    return v0
.end method

.method public getSelection()Landroid/os/Bundle;
    .locals 6

    .prologue
    .line 81
    new-instance v2, Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/vk/attachpicker/SelectionContext;->currentSelection:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 82
    .local v2, "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    iget-object v5, p0, Lcom/vk/attachpicker/SelectionContext;->currentSelection:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v4, v5, [Z

    .line 84
    .local v4, "videoFlags":[Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v5, v4

    if-ge v3, v5, :cond_0

    .line 85
    iget-object v5, p0, Lcom/vk/attachpicker/SelectionContext;->currentSelection:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vk/attachpicker/mediastore/MediaStoreEntry;

    .line 86
    .local v1, "e":Lcom/vk/attachpicker/mediastore/MediaStoreEntry;
    iget-object v5, v1, Lcom/vk/attachpicker/mediastore/MediaStoreEntry;->path:Landroid/net/Uri;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    iget-boolean v5, v1, Lcom/vk/attachpicker/mediastore/MediaStoreEntry;->isVideo:Z

    aput-boolean v5, v4, v3

    .line 84
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 90
    .end local v1    # "e":Lcom/vk/attachpicker/mediastore/MediaStoreEntry;
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 91
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v5, "result_files"

    invoke-virtual {v0, v5, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 92
    const-string/jumbo v5, "result_video_flags"

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putBooleanArray(Ljava/lang/String;[Z)V

    .line 94
    return-object v0
.end method

.method public isSelected(Lcom/vk/attachpicker/mediastore/MediaStoreEntry;)Z
    .locals 1
    .param p1, "entry"    # Lcom/vk/attachpicker/mediastore/MediaStoreEntry;

    .prologue
    .line 118
    if-nez p1, :cond_0

    .line 119
    const/4 v0, 0x0

    .line 121
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/vk/attachpicker/SelectionContext;->currentSelection:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public removeSelection(Lcom/vk/attachpicker/mediastore/MediaStoreEntry;)Z
    .locals 2
    .param p1, "entry"    # Lcom/vk/attachpicker/mediastore/MediaStoreEntry;

    .prologue
    const/4 v0, 0x1

    .line 145
    invoke-virtual {p0, p1}, Lcom/vk/attachpicker/SelectionContext;->isSelected(Lcom/vk/attachpicker/mediastore/MediaStoreEntry;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 146
    iget-object v1, p0, Lcom/vk/attachpicker/SelectionContext;->currentSelection:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 147
    invoke-static {}, Lcom/vk/attachpicker/events/NotificationCenter;->getInstance()Lcom/vk/attachpicker/events/NotificationCenter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/vk/attachpicker/events/NotificationCenter;->fireEvent(I)V

    .line 150
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public selectionCount()I
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/vk/attachpicker/SelectionContext;->currentSelection:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public setLimit(I)V
    .locals 0
    .param p1, "limit"    # I

    .prologue
    .line 110
    iput p1, p0, Lcom/vk/attachpicker/SelectionContext;->limit:I

    .line 111
    return-void
.end method

.method public setRequestCode(I)V
    .locals 0
    .param p1, "requestCode"    # I

    .prologue
    .line 102
    iput p1, p0, Lcom/vk/attachpicker/SelectionContext;->requestCode:I

    .line 103
    return-void
.end method
