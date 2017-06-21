.class Lcom/vkcoffee/android/stickers/EmojiView$1;
.super Ljava/util/ArrayList;
.source "EmojiView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/stickers/EmojiView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Lcom/vkcoffee/android/stickers/EmojiView$Page;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/stickers/EmojiView;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/stickers/EmojiView;I)V
    .locals 4
    .param p1, "this$0"    # Lcom/vkcoffee/android/stickers/EmojiView;
    .param p2, "x0"    # I

    .prologue
    .line 47
    iput-object p1, p0, Lcom/vkcoffee/android/stickers/EmojiView$1;->this$0:Lcom/vkcoffee/android/stickers/EmojiView;

    invoke-direct {p0, p2}, Ljava/util/ArrayList;-><init>(I)V

    .line 48
    new-instance v0, Lcom/vkcoffee/android/stickers/EmojiView$RecentsPage;

    iget-object v1, p0, Lcom/vkcoffee/android/stickers/EmojiView$1;->this$0:Lcom/vkcoffee/android/stickers/EmojiView;

    const v2, 0x7f020225

    invoke-direct {v0, v1, v2}, Lcom/vkcoffee/android/stickers/EmojiView$RecentsPage;-><init>(Lcom/vkcoffee/android/stickers/EmojiView;I)V

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/stickers/EmojiView$1;->add(Ljava/lang/Object;)Z

    .line 49
    new-instance v0, Lcom/vkcoffee/android/stickers/EmojiView$Page;

    iget-object v1, p0, Lcom/vkcoffee/android/stickers/EmojiView$1;->this$0:Lcom/vkcoffee/android/stickers/EmojiView;

    const v2, 0x7f020210

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/vkcoffee/android/stickers/EmojiView$Page;-><init>(Lcom/vkcoffee/android/stickers/EmojiView;II)V

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/stickers/EmojiView$1;->add(Ljava/lang/Object;)Z

    .line 50
    new-instance v0, Lcom/vkcoffee/android/stickers/EmojiView$Page;

    iget-object v1, p0, Lcom/vkcoffee/android/stickers/EmojiView$1;->this$0:Lcom/vkcoffee/android/stickers/EmojiView;

    const v2, 0x7f020157

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/vkcoffee/android/stickers/EmojiView$Page;-><init>(Lcom/vkcoffee/android/stickers/EmojiView;II)V

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/stickers/EmojiView$1;->add(Ljava/lang/Object;)Z

    .line 51
    new-instance v0, Lcom/vkcoffee/android/stickers/EmojiView$Page;

    iget-object v1, p0, Lcom/vkcoffee/android/stickers/EmojiView$1;->this$0:Lcom/vkcoffee/android/stickers/EmojiView;

    const v2, 0x7f020156

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lcom/vkcoffee/android/stickers/EmojiView$Page;-><init>(Lcom/vkcoffee/android/stickers/EmojiView;II)V

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/stickers/EmojiView$1;->add(Ljava/lang/Object;)Z

    .line 52
    new-instance v0, Lcom/vkcoffee/android/stickers/EmojiView$Page;

    iget-object v1, p0, Lcom/vkcoffee/android/stickers/EmojiView$1;->this$0:Lcom/vkcoffee/android/stickers/EmojiView;

    const v2, 0x7f020191

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Lcom/vkcoffee/android/stickers/EmojiView$Page;-><init>(Lcom/vkcoffee/android/stickers/EmojiView;II)V

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/stickers/EmojiView$1;->add(Ljava/lang/Object;)Z

    .line 53
    new-instance v0, Lcom/vkcoffee/android/stickers/EmojiView$Page;

    iget-object v1, p0, Lcom/vkcoffee/android/stickers/EmojiView$1;->this$0:Lcom/vkcoffee/android/stickers/EmojiView;

    const v2, 0x7f020154

    const/4 v3, 0x4

    invoke-direct {v0, v1, v2, v3}, Lcom/vkcoffee/android/stickers/EmojiView$Page;-><init>(Lcom/vkcoffee/android/stickers/EmojiView;II)V

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/stickers/EmojiView$1;->add(Ljava/lang/Object;)Z

    .line 54
    new-instance v0, Lcom/vkcoffee/android/stickers/EmojiView$Page;

    iget-object v1, p0, Lcom/vkcoffee/android/stickers/EmojiView$1;->this$0:Lcom/vkcoffee/android/stickers/EmojiView;

    const v2, 0x7f020159

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/vkcoffee/android/stickers/EmojiView$Page;-><init>(Lcom/vkcoffee/android/stickers/EmojiView;II)V

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/stickers/EmojiView$1;->add(Ljava/lang/Object;)Z

    .line 55
    new-instance v0, Lcom/vkcoffee/android/stickers/EmojiView$Page;

    iget-object v1, p0, Lcom/vkcoffee/android/stickers/EmojiView$1;->this$0:Lcom/vkcoffee/android/stickers/EmojiView;

    const v2, 0x7f020158

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/vkcoffee/android/stickers/EmojiView$Page;-><init>(Lcom/vkcoffee/android/stickers/EmojiView;II)V

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/stickers/EmojiView$1;->add(Ljava/lang/Object;)Z

    .line 56
    return-void
.end method
