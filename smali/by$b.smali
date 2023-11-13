.class public Lby$b;
.super Laq;
.source "PG"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lby;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "b"
.end annotation


# instance fields
.field public final a:Lby;

.field public b:Lby;

.field public c:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-static {}, Lp;->b()Lp;

    move-result-object v0

    invoke-direct {p0, v0}, Lby$b;-><init>(Lby;)V

    return-void
.end method

.method public synthetic constructor <init>(B)V
    .locals 0

    .line 8
    invoke-direct {p0}, Lby$b;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(BB)V
    .locals 0

    const/4 p1, 0x0

    .line 10
    invoke-direct {p0, p1}, Lby$b;-><init>(C)V

    return-void
.end method

.method public synthetic constructor <init>(BC)V
    .locals 0

    const/4 p1, 0x0

    .line 12
    invoke-direct {p0, p1}, Lby$b;-><init>(S)V

    return-void
.end method

.method public synthetic constructor <init>(BF)V
    .locals 0

    const/4 p1, 0x0

    .line 18
    invoke-direct {p0, p1}, Lby$b;-><init>([B)V

    return-void
.end method

.method public synthetic constructor <init>(BI)V
    .locals 0

    const/4 p1, 0x0

    .line 16
    invoke-direct {p0, p1}, Lby$b;-><init>(Z)V

    return-void
.end method

.method public synthetic constructor <init>(BS)V
    .locals 0

    const/4 p1, 0x0

    .line 14
    invoke-direct {p0, p1}, Lby$b;-><init>(I)V

    return-void
.end method

.method public constructor <init>(C)V
    .locals 0

    .line 9
    invoke-static {}, Lr;->d()Lr;

    move-result-object p1

    invoke-direct {p0, p1}, Lby$b;-><init>(Lby;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 13
    invoke-static {}, Lr$a;->h()Lr$a;

    move-result-object p1

    invoke-direct {p0, p1}, Lby$b;-><init>(Lby;)V

    return-void
.end method

.method public constructor <init>(Lby;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultInstance"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Laq;-><init>()V

    .line 2
    iput-object p1, p0, Lby$b;->a:Lby;

    .line 3
    sget v0, Lby$e;->d:I

    const/4 v1, 0x0

    .line 4
    invoke-virtual {p1, v0, v1}, Lby;->a(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 5
    check-cast p1, Lby;

    iput-object p1, p0, Lby$b;->b:Lby;

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lby$b;->c:Z

    return-void
.end method

.method public constructor <init>(S)V
    .locals 0

    .line 11
    invoke-static {}, Lr$b;->a()Lr$b;

    move-result-object p1

    invoke-direct {p0, p1}, Lby$b;-><init>(Lby;)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 15
    invoke-static {}, Lt;->b()Lt;

    move-result-object p1

    invoke-direct {p0, p1}, Lby$b;-><init>(Lby;)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    .line 17
    invoke-static {}, Laf;->e()Laf;

    move-result-object p1

    invoke-direct {p0, p1}, Lby$b;-><init>(Lby;)V

    return-void
.end method

.method private static a(Lby;Lby;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dest",
            "src"
        }
    .end annotation

    .line 3
    sget-object v0, Ldu;->a:Ldu;

    .line 4
    invoke-virtual {v0, p0}, Ldu;->a(Ljava/lang/Object;)Ldw;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Ldw;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final synthetic a()Laq;
    .locals 0

    .line 7
    invoke-virtual {p0}, Lby$b;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lby$b;

    return-object p0
.end method

.method public final synthetic a(Lan;)Laq;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "message"
        }
    .end annotation

    .line 5
    check-cast p1, Lby;

    .line 6
    invoke-virtual {p0, p1}, Lby$b;->a(Lby;)Lby$b;

    move-result-object p0

    return-object p0
.end method

.method public a(I)Lby$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 8
    invoke-virtual {p0}, Lby$b;->b()V

    .line 9
    iget-object p1, p0, Lby$b;->b:Lby;

    check-cast p1, Lp;

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lp;->a(Lp;I)V

    return-object p0
.end method

.method public a(Laf$a;)Lby$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 14
    invoke-virtual {p0}, Lby$b;->b()V

    .line 15
    iget-object v0, p0, Lby$b;->b:Lby;

    check-cast v0, Laf;

    invoke-static {v0, p1}, Laf;->a(Laf;Laf$a;)V

    return-object p0
.end method

.method public final a(Lby;)Lby$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lby$b;->b()V

    .line 2
    iget-object v0, p0, Lby$b;->b:Lby;

    invoke-static {v0, p1}, Lby$b;->a(Lby;Lby;)V

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lby$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 12
    invoke-virtual {p0}, Lby$b;->b()V

    .line 13
    iget-object v0, p0, Lby$b;->b:Lby;

    check-cast v0, Laf;

    invoke-static {v0, p1}, Laf;->a(Laf;Ljava/lang/String;)V

    return-object p0
.end method

.method public a(Z)Lby$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 10
    invoke-virtual {p0}, Lby$b;->b()V

    .line 11
    iget-object p1, p0, Lby$b;->b:Lby;

    check-cast p1, Lt;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lt;->a(Lt;Z)V

    return-object p0
.end method

.method public b(Laf$a;)Lby$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 10
    invoke-virtual {p0}, Lby$b;->b()V

    .line 11
    iget-object v0, p0, Lby$b;->b:Lby;

    check-cast v0, Laf;

    invoke-static {v0, p1}, Laf;->b(Laf;Laf$a;)V

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lby$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 8
    invoke-virtual {p0}, Lby$b;->b()V

    .line 9
    iget-object v0, p0, Lby$b;->b:Lby;

    check-cast v0, Laf;

    invoke-static {v0, p1}, Laf;->b(Laf;Ljava/lang/String;)V

    return-object p0
.end method

.method public b()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lby$b;->c:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lby$b;->b:Lby;

    sget v1, Lby$e;->d:I

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v0, v1, v2}, Lby;->a(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 4
    check-cast v0, Lby;

    .line 5
    iget-object v1, p0, Lby$b;->b:Lby;

    invoke-static {v0, v1}, Lby$b;->a(Lby;Lby;)V

    .line 6
    iput-object v0, p0, Lby$b;->b:Lby;

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lby$b;->c:Z

    :cond_0
    return-void
.end method

.method public c()Lby;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lby$b;->c:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lby$b;->b:Lby;

    return-object p0

    .line 3
    :cond_0
    iget-object v0, p0, Lby$b;->b:Lby;

    invoke-virtual {v0}, Lby;->l()V

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lby$b;->c:Z

    .line 5
    iget-object p0, p0, Lby$b;->b:Lby;

    return-object p0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lby$b;->a:Lby;

    .line 2
    sget v1, Lby$e;->e:I

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v0, v1, v2}, Lby;->a(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 4
    check-cast v0, Lby$b;

    .line 5
    invoke-virtual {p0}, Lby$b;->d()Ldh;

    move-result-object p0

    check-cast p0, Lby;

    invoke-virtual {v0, p0}, Lby$b;->a(Lby;)Lby$b;

    return-object v0
.end method

.method public synthetic d()Ldh;
    .locals 0

    invoke-virtual {p0}, Lby$b;->c()Lby;

    move-result-object p0

    return-object p0
.end method

.method public final e()Lby;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lby$b;->d()Ldh;

    move-result-object p0

    check-cast p0, Lby;

    .line 2
    invoke-virtual {p0}, Lby;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 3
    :cond_0
    new-instance p0, Lej;

    invoke-direct {p0}, Lej;-><init>()V

    .line 4
    throw p0
.end method

.method public synthetic f()Ldh;
    .locals 0

    invoke-virtual {p0}, Lby$b;->e()Lby;

    move-result-object p0

    return-object p0
.end method

.method public final n()Z
    .locals 1

    iget-object p0, p0, Lby$b;->b:Lby;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lby;->a(Lby;Z)Z

    move-result p0

    return p0
.end method

.method public final synthetic r()Ldh;
    .locals 0

    iget-object p0, p0, Lby$b;->a:Lby;

    return-object p0
.end method
