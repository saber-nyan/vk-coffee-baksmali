.class public abstract Lcom/vkcoffee/android/data/PrivacySetting$UserListPrivacyRule;
.super Lcom/vkcoffee/android/data/PrivacySetting$PrivacyRule;
.source "PrivacySetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/data/PrivacySetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "UserListPrivacyRule"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 202
    invoke-direct {p0}, Lcom/vkcoffee/android/data/PrivacySetting$PrivacyRule;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract add(I)V
.end method

.method public abstract userCount()I
.end method

.method public abstract userIdAt(I)I
.end method
