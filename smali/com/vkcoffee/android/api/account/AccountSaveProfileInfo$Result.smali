.class public Lcom/vkcoffee/android/api/account/AccountSaveProfileInfo$Result;
.super Ljava/lang/Object;
.source "AccountSaveProfileInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/api/account/AccountSaveProfileInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Result"
.end annotation


# instance fields
.field public nameRetryIn:I

.field public nameStatus:I

.field public newFirst:Ljava/lang/String;

.field public newLast:Ljava/lang/String;


# direct methods
.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "nameStatus"    # I
    .param p2, "nameRetryIn"    # I
    .param p3, "newFirst"    # Ljava/lang/String;
    .param p4, "newLast"    # Ljava/lang/String;

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput p1, p0, Lcom/vkcoffee/android/api/account/AccountSaveProfileInfo$Result;->nameStatus:I

    .line 87
    iput p2, p0, Lcom/vkcoffee/android/api/account/AccountSaveProfileInfo$Result;->nameRetryIn:I

    .line 88
    iput-object p3, p0, Lcom/vkcoffee/android/api/account/AccountSaveProfileInfo$Result;->newFirst:Ljava/lang/String;

    .line 89
    iput-object p4, p0, Lcom/vkcoffee/android/api/account/AccountSaveProfileInfo$Result;->newLast:Ljava/lang/String;

    .line 90
    return-void
.end method
