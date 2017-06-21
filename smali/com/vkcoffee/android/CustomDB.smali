.class public Lcom/vkcoffee/android/CustomDB;
.super Ljava/lang/Object;
.source "CustomDB.java"


# static fields
.field public static AUDIOCACHE_DB:Ljava/lang/String;

.field public static CHATS_DB:Ljava/lang/String;

.field public static DIALOGS_DB:Ljava/lang/String;

.field public static FRIENDS_DB:Ljava/lang/String;

.field public static GROUPS_DB:Ljava/lang/String;

.field public static POSTS_DB:Ljava/lang/String;

.field public static VK_DB:Ljava/lang/String;

.field private static db:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 5
    const-string v0, ".db"

    sput-object v0, Lcom/vkcoffee/android/CustomDB;->db:Ljava/lang/String;

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "audio"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/vkcoffee/android/CustomDB;->db:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vkcoffee/android/CustomDB;->AUDIOCACHE_DB:Ljava/lang/String;

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "vk"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/vkcoffee/android/CustomDB;->currentUID()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/vkcoffee/android/CustomDB;->db:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vkcoffee/android/CustomDB;->VK_DB:Ljava/lang/String;

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "posts"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/vkcoffee/android/CustomDB;->currentUID()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/vkcoffee/android/CustomDB;->db:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vkcoffee/android/CustomDB;->POSTS_DB:Ljava/lang/String;

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "friends"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/vkcoffee/android/CustomDB;->currentUID()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/vkcoffee/android/CustomDB;->db:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vkcoffee/android/CustomDB;->FRIENDS_DB:Ljava/lang/String;

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "chats"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/vkcoffee/android/CustomDB;->currentUID()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/vkcoffee/android/CustomDB;->db:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vkcoffee/android/CustomDB;->CHATS_DB:Ljava/lang/String;

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "groups"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/vkcoffee/android/CustomDB;->currentUID()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/vkcoffee/android/CustomDB;->db:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vkcoffee/android/CustomDB;->GROUPS_DB:Ljava/lang/String;

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "dialogs"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/vkcoffee/android/CustomDB;->currentUID()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/vkcoffee/android/CustomDB;->db:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vkcoffee/android/CustomDB;->DIALOGS_DB:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static currentUID()I
    .locals 1

    .prologue
    .line 31
    invoke-static {}, Lcom/vkcoffee/android/MAC;->getCurrentUID()I

    move-result v0

    invoke-static {v0}, Lcom/vkcoffee/android/MAC;->getManipulateID(I)I

    move-result v0

    return v0
.end method
