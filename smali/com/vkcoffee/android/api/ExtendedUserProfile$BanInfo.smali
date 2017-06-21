.class public Lcom/vkcoffee/android/api/ExtendedUserProfile$BanInfo;
.super Ljava/lang/Object;
.source "ExtendedUserProfile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/api/ExtendedUserProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BanInfo"
.end annotation


# instance fields
.field public comment:Ljava/lang/String;

.field public endTime:I

.field public reason:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
