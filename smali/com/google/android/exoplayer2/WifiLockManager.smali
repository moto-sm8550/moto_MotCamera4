.class public final Lcom/google/android/exoplayer2/WifiLockManager;
.super Ljava/lang/Object;
.source "WifiLockManager.java"


# instance fields
.field public enabled:Z

.field public stayAwake:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string/jumbo p1, "wifi"

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiManager;

    return-void
.end method


# virtual methods
.method public final setStayAwake(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/WifiLockManager;->stayAwake:Z

    return-void
.end method
