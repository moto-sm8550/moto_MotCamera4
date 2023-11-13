.class public Lbo;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Ldh;

.field public final b:Ljava/lang/Object;

.field public final c:Ldh;

.field public final d:Lby$c;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ldh;Ljava/lang/Object;Ldh;Lby$c;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "containingTypeDefaultInstance",
            "defaultValue",
            "messageDefaultInstance",
            "descriptor",
            "singularType"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lbo;-><init>()V

    if-eqz p1, :cond_2

    .line 2
    iget-object v0, p4, Lby$c;->c:Lex;

    .line 3
    sget-object v1, Lex;->k:Lex;

    if-ne v0, v1, :cond_1

    if-eqz p3, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Null messageDefaultInstance"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5
    :cond_1
    :goto_0
    iput-object p1, p0, Lbo;->a:Ldh;

    .line 6
    iput-object p2, p0, Lbo;->b:Ljava/lang/Object;

    .line 7
    iput-object p3, p0, Lbo;->c:Ldh;

    .line 8
    iput-object p4, p0, Lbo;->d:Lby$c;

    return-void

    .line 9
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Null containingTypeDefaultInstance"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public a()Ldh;
    .locals 0

    .line 1
    iget-object p0, p0, Lbo;->a:Ldh;

    return-object p0
.end method

.method public a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "value"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lbo;->d:Lby$c;

    .line 3
    iget-boolean v1, v0, Lby$c;->d:Z

    if-eqz v1, :cond_2

    .line 4
    iget-object v0, v0, Lby$c;->c:Lex;

    .line 5
    iget-object v0, v0, Lex;->s:Lfa;

    .line 6
    sget-object v1, Lfa;->h:Lfa;

    if-ne v0, v1, :cond_1

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 9
    invoke-virtual {p0, v1}, Lbo;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    return-object p1

    .line 10
    :cond_2
    invoke-virtual {p0, p1}, Lbo;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public b()Ldh;
    .locals 0

    .line 1
    iget-object p0, p0, Lbo;->c:Ldh;

    return-object p0
.end method

.method public b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "value"
        }
    .end annotation

    .line 2
    iget-object p0, p0, Lbo;->d:Lby$c;

    .line 3
    iget-object v0, p0, Lby$c;->c:Lex;

    .line 4
    iget-object v0, v0, Lex;->s:Lfa;

    .line 5
    sget-object v1, Lfa;->h:Lfa;

    if-ne v0, v1, :cond_0

    .line 6
    iget-object p0, p0, Lby$c;->a:Lcg;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {p0, p1}, Lcg;->a(I)Lcd;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p1
.end method

.method public c()Lex;
    .locals 0

    .line 10
    iget-object p0, p0, Lbo;->d:Lby$c;

    .line 11
    iget-object p0, p0, Lby$c;->c:Lex;

    return-object p0
.end method

.method public c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "value"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lbo;->d:Lby$c;

    .line 2
    iget-boolean v1, v0, Lby$c;->d:Z

    if-eqz v1, :cond_2

    .line 3
    iget-object v0, v0, Lby$c;->c:Lex;

    .line 4
    iget-object v0, v0, Lex;->s:Lfa;

    .line 5
    sget-object v1, Lfa;->h:Lfa;

    if-ne v0, v1, :cond_1

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 8
    invoke-virtual {p0, v1}, Lbo;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    return-object p1

    .line 9
    :cond_2
    invoke-virtual {p0, p1}, Lbo;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "value"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lbo;->d:Lby$c;

    .line 2
    iget-object p0, p0, Lby$c;->c:Lex;

    .line 3
    iget-object p0, p0, Lex;->s:Lfa;

    .line 4
    sget-object v0, Lfa;->h:Lfa;

    if-ne p0, v0, :cond_0

    .line 5
    check-cast p1, Lcd;

    invoke-interface {p1}, Lcd;->a()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p1
.end method

.method public d()Z
    .locals 0

    .line 6
    iget-object p0, p0, Lbo;->d:Lby$c;

    iget-boolean p0, p0, Lby$c;->d:Z

    return p0
.end method
