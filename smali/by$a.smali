.class public Lby$a;
.super Lby$b;
.source "PG"

# interfaces
.implements Ldj;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lby;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 2
    invoke-static {}, Ln;->b()Ln;

    move-result-object v0

    invoke-direct {p0, v0}, Lby$a;-><init>(Lby$d;)V

    return-void
.end method

.method public synthetic constructor <init>(B)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lby$a;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(BB)V
    .locals 0

    const/4 p1, 0x0

    .line 5
    invoke-direct {p0, p1}, Lby$a;-><init>(C)V

    return-void
.end method

.method public constructor <init>(C)V
    .locals 0

    .line 4
    invoke-static {}, Ly;->b()Ly;

    move-result-object p1

    invoke-direct {p0, p1}, Lby$a;-><init>(Lby$d;)V

    return-void
.end method

.method public constructor <init>(Lby$d;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultInstance"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lby$b;-><init>(Lby;)V

    return-void
.end method


# virtual methods
.method public final a(Lbo;Ljava/lang/Object;)Lby$a;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "extension",
            "value"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lby;->a(Lbo;)Lbo;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Lbo;->a()Ldh;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lby$b;->a:Lby;

    if-ne v0, v1, :cond_1

    .line 4
    invoke-virtual {p0}, Lby$a;->b()V

    .line 5
    iget-object v0, p0, Lby$b;->b:Lby;

    check-cast v0, Lby$d;

    iget-object v0, v0, Lby$d;->d:Lbt;

    .line 6
    iget-boolean v1, v0, Lbt;->b:Z

    if-eqz v1, :cond_0

    .line 7
    invoke-virtual {v0}, Lbt;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbt;

    .line 8
    iget-object v1, p0, Lby$b;->b:Lby;

    check-cast v1, Lby$d;

    iput-object v0, v1, Lby$d;->d:Lbt;

    .line 9
    :cond_0
    iget-object v1, p1, Lbo;->d:Lby$c;

    .line 10
    invoke-virtual {p1, p2}, Lbo;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lbt;->a(Lbs;Ljava/lang/Object;)V

    return-object p0

    .line 11
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "This extension is for a different message type.  Please make sure that you are not suppressing any generics type warnings."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public a(Ll;)Lby$a;
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
    invoke-virtual {p0}, Lby$a;->b()V

    .line 13
    iget-object v0, p0, Lby$b;->b:Lby;

    check-cast v0, Ln;

    invoke-static {v0, p1}, Ln;->a(Ln;Ll;)V

    return-object p0
.end method

.method public final b()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lby$b;->c:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-super {p0}, Lby$b;->b()V

    .line 3
    iget-object p0, p0, Lby$b;->b:Lby;

    move-object v0, p0

    check-cast v0, Lby$d;

    check-cast p0, Lby$d;

    iget-object p0, p0, Lby$d;->d:Lbt;

    invoke-virtual {p0}, Lbt;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lbt;

    iput-object p0, v0, Lby$d;->d:Lbt;

    return-void
.end method

.method public synthetic c()Lby;
    .locals 0

    invoke-virtual {p0}, Lby$a;->d()Ldh;

    move-result-object p0

    check-cast p0, Lby$d;

    return-object p0
.end method

.method public synthetic d()Ldh;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lby$b;->c:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lby$b;->b:Lby;

    check-cast p0, Lby$d;

    return-object p0

    .line 3
    :cond_0
    iget-object v0, p0, Lby$b;->b:Lby;

    check-cast v0, Lby$d;

    iget-object v0, v0, Lby$d;->d:Lbt;

    invoke-virtual {v0}, Lbt;->a()V

    .line 4
    invoke-super {p0}, Lby$b;->c()Lby;

    move-result-object p0

    check-cast p0, Lby$d;

    return-object p0
.end method
