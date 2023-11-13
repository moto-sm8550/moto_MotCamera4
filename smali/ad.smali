.class final synthetic Lad;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lae;

.field private final b:[B

.field private final c:Lj;


# direct methods
.method public constructor <init>(Lae;[BLj;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lad;->a:Lae;

    iput-object p2, p0, Lad;->b:[B

    iput-object p3, p0, Lad;->c:Lj;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lad;->a:Lae;

    iget-object p0, p0, Lad;->b:[B

    .line 2
    invoke-virtual {v0}, Lae;->j()Z

    move-result v1

    const-string v2, "LensServiceConnImpl"

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lae;->h()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    .line 3
    :cond_0
    invoke-static {}, Lbp;->b()Lbp;

    move-result-object v1

    .line 4
    :try_start_0
    invoke-static {p0, v1}, Ly;->a([BLbp;)Ly;

    move-result-object p0

    .line 5
    invoke-virtual {p0}, Ly;->a()Lw;

    move-result-object v1

    sget-object v3, Lw;->b:Lw;

    if-ne v1, v3, :cond_3

    .line 6
    sget-object v1, Ls;->a:Lbo;

    .line 7
    invoke-static {v1}, Lby;->a(Lbo;)Lbo;

    move-result-object v1

    .line 8
    invoke-virtual {v1}, Lbo;->a()Ldh;

    move-result-object v3

    .line 9
    sget v4, Lby$e;->f:I

    const/4 v5, 0x0

    .line 10
    invoke-virtual {p0, v4, v5}, Ly;->a(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 11
    check-cast v4, Lby;

    if-ne v3, v4, :cond_2

    .line 12
    iget-object p0, p0, Lby$d;->d:Lbt;

    iget-object v3, v1, Lbo;->d:Lby$c;

    invoke-virtual {p0, v3}, Lbt;->a(Lbs;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_1

    .line 13
    iget-object p0, v1, Lbo;->b:Ljava/lang/Object;

    goto :goto_0

    .line 14
    :cond_1
    invoke-virtual {v1, p0}, Lbo;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 15
    :goto_0
    check-cast p0, Lr;

    .line 16
    invoke-virtual {p0}, Lr;->a()I

    move-result v1

    iput v1, v0, Lae;->b:I

    .line 17
    invoke-virtual {p0}, Lr;->b()Lr$a;

    move-result-object v1

    iput-object v1, v0, Lae;->c:Lr$a;

    .line 18
    invoke-virtual {p0}, Lr;->c()Lr$b;

    .line 19
    sget-object p0, Laf$a;->b:Laf$a;

    iput-object p0, v0, Lae;->d:Laf$a;

    const/4 p0, 0x4

    .line 20
    invoke-virtual {v0, p0}, Lae;->a(I)V

    goto :goto_1

    .line 21
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v1, "This extension is for a different message type.  Please make sure that you are not suppressing any generics type warnings."

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 22
    :cond_3
    iget-object p0, v0, Lae;->a:Ldb;

    invoke-virtual {p0}, Ldb;->c()V
    :try_end_0
    .catch Lcm; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string v1, "Unable to parse the protobuf."

    .line 23
    invoke-static {v2, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 24
    sget-object p0, Laf$a;->d:Laf$a;

    iput-object p0, v0, Lae;->d:Laf$a;

    const/4 p0, 0x7

    .line 25
    invoke-virtual {v0, p0}, Lae;->a(I)V

    :goto_1
    return-void

    :cond_4
    :goto_2
    const-string p0, "ServiceEvent received after connection disposed."

    .line 26
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
