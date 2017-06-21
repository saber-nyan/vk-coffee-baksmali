.class final Lcom/vkcoffee/android/data/Messages$10;
.super Ljava/lang/Object;
.source "Messages.java"

# interfaces
.implements Lcom/vkcoffee/android/api/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/data/Messages;->getChatUsersFromApi(ILcom/vkcoffee/android/data/Messages$GetChatUsersCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/vkcoffee/android/api/Callback",
        "<",
        "Lcom/vkcoffee/android/api/messages/MessagesGetChat$Result;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$chatID:I

.field final synthetic val$getChatUsersCallback:Lcom/vkcoffee/android/data/Messages$GetChatUsersCallback;


# direct methods
.method constructor <init>(ILcom/vkcoffee/android/data/Messages$GetChatUsersCallback;)V
    .locals 0

    .prologue
    .line 1112
    iput p1, p0, Lcom/vkcoffee/android/data/Messages$10;->val$chatID:I

    iput-object p2, p0, Lcom/vkcoffee/android/data/Messages$10;->val$getChatUsersCallback:Lcom/vkcoffee/android/data/Messages$GetChatUsersCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;)V
    .locals 4
    .param p1, "error"    # Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;

    .prologue
    const/4 v3, 0x0

    .line 1134
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1135
    .local v0, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/ChatUser;>;"
    invoke-virtual {p1}, Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;->getCodeValue()I

    move-result v1

    const/16 v2, 0x64

    if-ne v1, v2, :cond_0

    .line 1136
    iget v1, p0, Lcom/vkcoffee/android/data/Messages$10;->val$chatID:I

    invoke-static {v1, v3, v0, v3}, Lcom/vkcoffee/android/cache/Cache;->updateChat(ILjava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 1138
    :cond_0
    iget-object v1, p0, Lcom/vkcoffee/android/data/Messages$10;->val$getChatUsersCallback:Lcom/vkcoffee/android/data/Messages$GetChatUsersCallback;

    invoke-interface {v1, v0, v3, v3}, Lcom/vkcoffee/android/data/Messages$GetChatUsersCallback;->onUsersLoaded(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    .line 1139
    return-void
.end method

.method public success(Lcom/vkcoffee/android/api/messages/MessagesGetChat$Result;)V
    .locals 7
    .param p1, "r"    # Lcom/vkcoffee/android/api/messages/MessagesGetChat$Result;

    .prologue
    .line 1115
    const-string/jumbo v3, "vk"

    const-string/jumbo v4, "chat users loaded"

    invoke-static {v3, v4}, Lcom/vkcoffee/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1116
    new-instance v1, Lcom/vkcoffee/android/UserProfile;

    invoke-direct {v1}, Lcom/vkcoffee/android/UserProfile;-><init>()V

    .line 1117
    .local v1, "p":Lcom/vkcoffee/android/UserProfile;
    iget v3, p0, Lcom/vkcoffee/android/data/Messages$10;->val$chatID:I

    const v4, 0x77359400

    add-int/2addr v3, v4

    iput v3, v1, Lcom/vkcoffee/android/UserProfile;->uid:I

    .line 1118
    iget-object v3, p1, Lcom/vkcoffee/android/api/messages/MessagesGetChat$Result;->title:Ljava/lang/String;

    iput-object v3, v1, Lcom/vkcoffee/android/UserProfile;->fullName:Ljava/lang/String;

    .line 1119
    iget-object v3, p1, Lcom/vkcoffee/android/api/messages/MessagesGetChat$Result;->photo:Ljava/lang/String;

    iput-object v3, v1, Lcom/vkcoffee/android/UserProfile;->photo:Ljava/lang/String;

    .line 1120
    iget v3, p1, Lcom/vkcoffee/android/api/messages/MessagesGetChat$Result;->adminID:I

    iput v3, v1, Lcom/vkcoffee/android/UserProfile;->online:I

    .line 1121
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1122
    .local v2, "x":Landroid/os/Bundle;
    const-string/jumbo v3, "dnd"

    iget v4, p1, Lcom/vkcoffee/android/api/messages/MessagesGetChat$Result;->dnd:I

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1123
    const-string/jumbo v3, "mute"

    iget-boolean v4, p1, Lcom/vkcoffee/android/api/messages/MessagesGetChat$Result;->mute:Z

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1124
    iput-object v2, v1, Lcom/vkcoffee/android/UserProfile;->extra:Landroid/os/Bundle;

    .line 1125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1126
    .local v0, "al":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/UserProfile;>;"
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1127
    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/vkcoffee/android/cache/Cache;->updatePeers(Ljava/util/List;Z)V

    .line 1128
    iget v3, p0, Lcom/vkcoffee/android/data/Messages$10;->val$chatID:I

    iget-object v4, p1, Lcom/vkcoffee/android/api/messages/MessagesGetChat$Result;->title:Ljava/lang/String;

    iget-object v5, p1, Lcom/vkcoffee/android/api/messages/MessagesGetChat$Result;->users:Ljava/util/ArrayList;

    iget-object v6, p1, Lcom/vkcoffee/android/api/messages/MessagesGetChat$Result;->photo:Ljava/lang/String;

    invoke-static {v3, v4, v5, v6}, Lcom/vkcoffee/android/cache/Cache;->updateChat(ILjava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 1129
    iget-object v3, p0, Lcom/vkcoffee/android/data/Messages$10;->val$getChatUsersCallback:Lcom/vkcoffee/android/data/Messages$GetChatUsersCallback;

    iget-object v4, p1, Lcom/vkcoffee/android/api/messages/MessagesGetChat$Result;->users:Ljava/util/ArrayList;

    iget-object v5, p1, Lcom/vkcoffee/android/api/messages/MessagesGetChat$Result;->title:Ljava/lang/String;

    iget-object v6, p1, Lcom/vkcoffee/android/api/messages/MessagesGetChat$Result;->photo:Ljava/lang/String;

    invoke-interface {v3, v4, v5, v6}, Lcom/vkcoffee/android/data/Messages$GetChatUsersCallback;->onUsersLoaded(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    .line 1130
    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1112
    check-cast p1, Lcom/vkcoffee/android/api/messages/MessagesGetChat$Result;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/data/Messages$10;->success(Lcom/vkcoffee/android/api/messages/MessagesGetChat$Result;)V

    return-void
.end method
