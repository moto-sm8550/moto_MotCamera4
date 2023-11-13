.class public Ldb;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Lex;

.field public final b:Ljava/lang/Object;

.field public final c:Lex;

.field public final d:Ljava/lang/Object;

.field public final e:Ljava/util/Queue;

.field public final f:Lab;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lx;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "lensSdkParamsReader"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Ldb;->e:Ljava/util/Queue;

    .line 3
    invoke-static {p1, p0, p2}, Ldc;->a(Landroid/content/Context;Ldb;Lx;)Lab;

    move-result-object p1

    iput-object p1, p0, Ldb;->f:Lab;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .line 1
    invoke-static {}, Lat;->a()V

    .line 2
    invoke-virtual {p0}, Ldb;->j()V

    return-void
.end method

.method public a(Lac;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    .line 11
    invoke-static {}, Lat;->a()V

    .line 12
    new-instance v0, Ldc;

    invoke-direct {v0, p0, p1}, Ldc;-><init>(Ldb;Lac;)V

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Ldb;->a(Lac;Z)V

    return-void
.end method

.method public a(Lac;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "callback",
            "bypassLensAvailabilityCheck"
        }
    .end annotation

    .line 13
    invoke-static {}, Lat;->a()V

    .line 14
    iget-object p2, p0, Ldb;->f:Lab;

    invoke-interface {p2}, Lab;->g()Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Ldb;->f:Lab;

    invoke-interface {p2}, Lab;->h()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 15
    :cond_0
    iget-object p2, p0, Ldb;->f:Lab;

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Lab;->a(Z)Z

    .line 16
    iget-object p0, p0, Ldb;->e:Ljava/util/Queue;

    invoke-interface {p0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void

    .line 17
    :cond_1
    :goto_0
    iget-object p0, p0, Ldb;->f:Lab;

    invoke-interface {p0}, Lab;->f()Laf$a;

    move-result-object p0

    invoke-interface {p1, p0}, Lac;->a(Laf$a;)V

    return-void
.end method

.method public a(Landroid/os/Bundle;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "args"
        }
    .end annotation

    .line 3
    invoke-static {}, Lat;->a()V

    .line 4
    iget-object v0, p0, Ldb;->f:Lab;

    invoke-interface {v0}, Lab;->g()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 5
    :cond_0
    invoke-static {}, Ln;->a()Lby$a;

    move-result-object v0

    sget-object v2, Ll;->c:Ll;

    invoke-virtual {v0, v2}, Lby$a;->a(Ll;)Lby$a;

    move-result-object v0

    invoke-virtual {v0}, Lby$b;->f()Ldh;

    move-result-object v0

    check-cast v0, Lby;

    check-cast v0, Ln;

    .line 6
    new-instance v2, Lj;

    invoke-direct {v2, p1}, Lj;-><init>(Landroid/os/Parcelable;)V

    .line 7
    :try_start_0
    iget-object p0, p0, Ldb;->f:Lab;

    .line 8
    invoke-virtual {v0}, Lan;->j()[B

    move-result-object p1

    .line 9
    invoke-interface {p0, p1, v2}, Lab;->b([BLj;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    const-string p1, "LensServiceBridge"

    const-string v0, "Failed to inject image."

    .line 10
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public b()V
    .locals 0

    .line 1
    invoke-static {}, Lat;->a()V

    .line 2
    invoke-virtual {p0}, Ldb;->j()V

    return-void
.end method

.method public b(Lac;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    .line 12
    invoke-static {}, Lat;->a()V

    .line 13
    new-instance v0, Lat;

    invoke-direct {v0, p0, p1}, Lat;-><init>(Ldb;Lac;)V

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Ldb;->a(Lac;Z)V

    return-void
.end method

.method public b(Landroid/os/Bundle;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "args"
        }
    .end annotation

    .line 3
    invoke-static {}, Lat;->a()V

    .line 4
    iget-object v0, p0, Ldb;->f:Lab;

    invoke-interface {v0}, Lab;->g()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 5
    :cond_0
    invoke-static {}, Ln;->a()Lby$a;

    move-result-object v0

    sget-object v2, Ll;->g:Ll;

    invoke-virtual {v0, v2}, Lby$a;->a(Ll;)Lby$a;

    move-result-object v0

    invoke-virtual {v0}, Lby$b;->f()Ldh;

    move-result-object v0

    check-cast v0, Lby;

    check-cast v0, Ln;

    .line 6
    new-instance v2, Lj;

    invoke-direct {v2, p1}, Lj;-><init>(Landroid/os/Parcelable;)V

    .line 7
    :try_start_0
    iget-object p1, p0, Ldb;->f:Lab;

    .line 8
    invoke-virtual {v0}, Lan;->j()[B

    move-result-object v0

    .line 9
    invoke-interface {p1, v0, v2}, Lab;->b([BLj;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    iget-object p0, p0, Ldb;->f:Lab;

    invoke-interface {p0}, Lab;->c()V

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    const-string p1, "LensServiceBridge"

    const-string v0, "Failed to start Lens"

    .line 11
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public c()V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "serviceEventProto",
            "systemParcelableWrapper"
        }
    .end annotation

    return-void
.end method

.method public synthetic c(Lac;)V
    .locals 0

    invoke-virtual {p0}, Ldb;->h()Laf$a;

    move-result-object p0

    invoke-interface {p1, p0}, Lac;->a(Laf$a;)V

    return-void
.end method

.method public d()V
    .locals 0

    .line 1
    invoke-static {}, Lat;->a()V

    .line 2
    iget-object p0, p0, Ldb;->f:Lab;

    invoke-interface {p0}, Lab;->a()V

    return-void
.end method

.method public synthetic d(Lac;)V
    .locals 0

    .line 3
    invoke-virtual {p0}, Ldb;->g()Laf$a;

    move-result-object p0

    invoke-interface {p1, p0}, Lac;->a(Laf$a;)V

    return-void
.end method

.method public e()V
    .locals 0

    .line 1
    invoke-static {}, Lat;->a()V

    .line 2
    iget-object p0, p0, Ldb;->f:Lab;

    invoke-interface {p0}, Lab;->b()V

    return-void
.end method

.method public f()Z
    .locals 3

    .line 1
    invoke-static {}, Lat;->a()V

    .line 2
    iget-object v0, p0, Ldb;->f:Lab;

    invoke-interface {v0}, Lab;->g()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 3
    :cond_0
    invoke-static {}, Ln;->a()Lby$a;

    move-result-object v0

    sget-object v2, Ll;->e:Ll;

    .line 4
    invoke-virtual {v0, v2}, Lby$a;->a(Ll;)Lby$a;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lby$b;->f()Ldh;

    move-result-object v0

    check-cast v0, Lby;

    check-cast v0, Ln;

    .line 6
    :try_start_0
    iget-object p0, p0, Ldb;->f:Lab;

    invoke-virtual {v0}, Lan;->j()[B

    move-result-object v0

    invoke-interface {p0, v0}, Lab;->a([B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    const-string v0, "LensServiceBridge"

    const-string v2, "Unable to send prewarm signal."

    .line 7
    invoke-static {v0, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public g()Laf$a;
    .locals 2

    .line 1
    invoke-static {}, Lat;->a()V

    .line 2
    iget-object v0, p0, Ldb;->f:Lab;

    invoke-interface {v0}, Lab;->g()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object p0, p0, Ldb;->f:Lab;

    invoke-interface {p0}, Lab;->f()Laf$a;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    invoke-virtual {p0}, Ldb;->i()Lr$a;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lr$a;->c()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p0, p0, Ldb;->f:Lab;

    .line 6
    invoke-interface {p0}, Lab;->d()I

    move-result p0

    .line 7
    invoke-virtual {v0}, Lr$a;->d()I

    move-result v0

    if-ge p0, v0, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    sget-object p0, Laf$a;->b:Laf$a;

    return-object p0

    .line 9
    :cond_2
    :goto_0
    sget-object p0, Laf$a;->f:Laf$a;

    return-object p0
.end method

.method public h()Laf$a;
    .locals 2

    .line 1
    invoke-static {}, Lat;->a()V

    .line 2
    iget-object v0, p0, Ldb;->f:Lab;

    invoke-interface {v0}, Lab;->g()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object p0, p0, Ldb;->f:Lab;

    invoke-interface {p0}, Lab;->f()Laf$a;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    invoke-virtual {p0}, Ldb;->i()Lr$a;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lr$a;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p0, p0, Ldb;->f:Lab;

    .line 6
    invoke-interface {p0}, Lab;->d()I

    move-result p0

    .line 7
    invoke-virtual {v0}, Lr$a;->b()I

    move-result v0

    if-ge p0, v0, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    sget-object p0, Laf$a;->b:Laf$a;

    return-object p0

    .line 9
    :cond_2
    :goto_0
    sget-object p0, Laf$a;->f:Laf$a;

    return-object p0
.end method

.method public i()Lr$a;
    .locals 2

    .line 1
    invoke-static {}, Lat;->a()V

    .line 2
    iget-object v0, p0, Ldb;->f:Lab;

    .line 3
    invoke-interface {v0}, Lab;->g()Z

    move-result v0

    const-string v1, "getServerFlags() called before ready."

    .line 4
    invoke-static {v0, v1}, Lat;->a(ZLjava/lang/String;)V

    .line 5
    iget-object v0, p0, Ldb;->f:Lab;

    invoke-interface {v0}, Lab;->g()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6
    invoke-static {}, Lr$a;->g()Lr$a;

    move-result-object p0

    return-object p0

    .line 7
    :cond_0
    iget-object p0, p0, Ldb;->f:Lab;

    invoke-interface {p0}, Lab;->e()Lr$a;

    move-result-object p0

    return-object p0
.end method

.method public j()V
    .locals 2

    .line 1
    :goto_0
    iget-object v0, p0, Ldb;->e:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Ldb;->e:Ljava/util/Queue;

    .line 3
    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lac;

    iget-object v1, p0, Ldb;->f:Lab;

    .line 4
    invoke-interface {v1}, Lab;->f()Laf$a;

    move-result-object v1

    invoke-interface {v0, v1}, Lac;->a(Laf$a;)V

    goto :goto_0

    :cond_0
    return-void
.end method
