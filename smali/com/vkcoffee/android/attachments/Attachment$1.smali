.class final Lcom/vkcoffee/android/attachments/Attachment$1;
.super Lcom/vkcoffee/android/api/SimpleCallback;
.source "Attachment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/attachments/Attachment;->parse(Lorg/json/JSONObject;)Lcom/vkcoffee/android/attachments/Attachment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/api/SimpleCallback",
        "<[",
        "Lcom/vkcoffee/android/NewsEntry;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$post:[Lcom/vkcoffee/android/NewsEntry;


# direct methods
.method constructor <init>([Lcom/vkcoffee/android/NewsEntry;)V
    .locals 0

    .prologue
    .line 181
    iput-object p1, p0, Lcom/vkcoffee/android/attachments/Attachment$1;->val$post:[Lcom/vkcoffee/android/NewsEntry;

    invoke-direct {p0}, Lcom/vkcoffee/android/api/SimpleCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 181
    check-cast p1, [Lcom/vkcoffee/android/NewsEntry;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/attachments/Attachment$1;->success([Lcom/vkcoffee/android/NewsEntry;)V

    return-void
.end method

.method public success([Lcom/vkcoffee/android/NewsEntry;)V
    .locals 3
    .param p1, "news"    # [Lcom/vkcoffee/android/NewsEntry;

    .prologue
    const/4 v2, 0x0

    .line 184
    iget-object v0, p0, Lcom/vkcoffee/android/attachments/Attachment$1;->val$post:[Lcom/vkcoffee/android/NewsEntry;

    aget-object v1, p1, v2

    aput-object v1, v0, v2

    .line 185
    return-void
.end method
