.class public interface abstract Lcom/vkcoffee/android/ui/holder/messages/MessageListItemHelper$MessageListItemHelperProvider;
.super Ljava/lang/Object;
.source "MessageListItemHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/ui/holder/messages/MessageListItemHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MessageListItemHelperProvider"
.end annotation


# virtual methods
.method public abstract getChatUser(I)Lcom/vkcoffee/android/UserProfile;
.end method

.method public abstract getContentWidth()I
.end method

.method public abstract getUserName(I)Ljava/lang/String;
.end method

.method public abstract isJumpedToEnd()Z
.end method

.method public abstract onBuildMessage()V
.end method

.method public abstract setHasSeparator(Z)V
.end method
