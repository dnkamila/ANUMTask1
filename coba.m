function v = coba(v, k, j, n)
    global u; global w; global y; global x;
    for t=1:n
        u=k;w=j;y=t;x=t;
        if t==u
            x=w;
        end
        if t==w
            w=u;
        end
        if y<u
            u=t;y=k;
        end
        if x<w
            w=t;x=j;
        end
        temp=v((n-u/2)*(u-1)+y);
        v((n-u/2)*(u-1)+y)=v((n-w/2)*(w-1)+x);
        v((n-w/2)*(w-1)+x)=temp;
    end
end
