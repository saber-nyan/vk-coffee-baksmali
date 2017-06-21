.class public Lcom/squareup/okhttp/internal/http/SocketConnector$ConnectedSocket;
.super Ljava/lang/Object;
.source "SocketConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/internal/http/SocketConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConnectedSocket"
.end annotation


# instance fields
.field public final alpnProtocol:Lcom/squareup/okhttp/Protocol;

.field public final handshake:Lcom/squareup/okhttp/Handshake;

.field public final route:Lcom/squareup/okhttp/Route;

.field public final socket:Ljava/net/Socket;


# direct methods
.method public constructor <init>(Lcom/squareup/okhttp/Route;Ljava/net/Socket;)V
    .locals 1
    .param p1, "route"    # Lcom/squareup/okhttp/Route;
    .param p2, "socket"    # Ljava/net/Socket;

    .prologue
    const/4 v0, 0x0

    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 265
    iput-object p1, p0, Lcom/squareup/okhttp/internal/http/SocketConnector$ConnectedSocket;->route:Lcom/squareup/okhttp/Route;

    .line 266
    iput-object p2, p0, Lcom/squareup/okhttp/internal/http/SocketConnector$ConnectedSocket;->socket:Ljava/net/Socket;

    .line 267
    iput-object v0, p0, Lcom/squareup/okhttp/internal/http/SocketConnector$ConnectedSocket;->alpnProtocol:Lcom/squareup/okhttp/Protocol;

    .line 268
    iput-object v0, p0, Lcom/squareup/okhttp/internal/http/SocketConnector$ConnectedSocket;->handshake:Lcom/squareup/okhttp/Handshake;

    .line 269
    return-void
.end method

.method public constructor <init>(Lcom/squareup/okhttp/Route;Ljavax/net/ssl/SSLSocket;Lcom/squareup/okhttp/Protocol;Lcom/squareup/okhttp/Handshake;)V
    .locals 0
    .param p1, "route"    # Lcom/squareup/okhttp/Route;
    .param p2, "socket"    # Ljavax/net/ssl/SSLSocket;
    .param p3, "alpnProtocol"    # Lcom/squareup/okhttp/Protocol;
    .param p4, "handshake"    # Lcom/squareup/okhttp/Handshake;

    .prologue
    .line 273
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 274
    iput-object p1, p0, Lcom/squareup/okhttp/internal/http/SocketConnector$ConnectedSocket;->route:Lcom/squareup/okhttp/Route;

    .line 275
    iput-object p2, p0, Lcom/squareup/okhttp/internal/http/SocketConnector$ConnectedSocket;->socket:Ljava/net/Socket;

    .line 276
    iput-object p3, p0, Lcom/squareup/okhttp/internal/http/SocketConnector$ConnectedSocket;->alpnProtocol:Lcom/squareup/okhttp/Protocol;

    .line 277
    iput-object p4, p0, Lcom/squareup/okhttp/internal/http/SocketConnector$ConnectedSocket;->handshake:Lcom/squareup/okhttp/Handshake;

    .line 278
    return-void
.end method
